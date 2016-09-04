class PatientIntakeStepsController < ApplicationController
  include Wicked::Wizard
  before_action :check_current_user, only: :show
  before_action :authenticate_user!, only: :show

  steps :step_1, :step_2, :step_3, :step_4, :step_5

  def show
    @user = current_user
    @race = ['White', 'African-American', 'Asian', 'American Indian', 'Other']
    if params[:id] == "step_4"
      @medical_history = MedicalHistory.create(user_id: @user.id)
      render_wizard
    elsif params[:id] == "step_2"
      prepopulate_parent_information #if from_guardian_form?
      render_wizard
    elsif params[:id] == "wicked_finish"
      @user.intake_complete = true
      @user.save!
      finish_wizard_path
      # render json: @user
    else
      render_wizard
    end
  end

  def update
    if from_guardian_form?
      update_parent
      redirect_to('/patient_intake_steps/step_3') and return
    end
    @user = current_user
    if params[:id] == "step_4"
      selected_conditions = params[:medical_history].keep_if { |key, value| value == '1' }.keys
      selected_conditions.each do |condition|
        current_user.medical_history["#{condition.to_sym}"] = 1
      end
      current_user.medical_history.save!
      render_wizard @user and return
    end
    calculate_birthday

    @user.update(user_params)
    render_wizard @user
  end

  private

    def prepopulate_parent_information
      @parent = Parent.create(user_id: @user.id, address: current_user.address,
                              city: current_user.city, state: current_user.state,
                              zip: current_user.zip)
      @parent.save!
    end

    def update_parent
      parent = Parent.find(params[:guardian_form])
      parent.update(parent_params)
    end

    def from_guardian_form?
      params["guardian_form"].present?
    end

    def calculate_birthday
      return if params[:user].blank?
      if params[:user]['birthday(1i)'].present?
        birthday_params = params[:user]['birthday(1i)'] + '-' + params[:user]['birthday(2i)'] + '-' + params[:user]['birthday(3i)']
        @user.birthday = birthday_params.to_time.strftime("%m/%d/%Y")
        @user.save!
      end
    end

    def check_current_user
      if params[:id] == 'step_1' && current_user.blank?
        redirect_to new_user_registration_path
      end
    end

    def finish_wizard_path
      redirect_to dashboard_path
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :gender, :address, :address2,
                    :city, :state, :zip, :social_security_number1, :date,
                    :primary_phone, :primary_phone_type, :secondary_phone_type,
                    :secondary_phone, :contact_method, :social_security_number2,
                    :social_security_number3, :preferred_language, :employer,
                    :relationship_status, :race, :intake_complete)
    end

    def parent_params
      params.require(:parent).permit(:first_name, :last_name, :address, :city, :state, :zip)
    end

end
