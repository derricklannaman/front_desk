class PatientIntakeStepsController < ApplicationController
  include Wicked::Wizard
  before_action :authenticate_user!, only: :show

  steps :personal_info, :contact_details, :demographic_info

  def show
    @user = current_user
    @race = ['White', 'African-American', 'Asian', 'American Indian', 'Other']


    if params[:id] == "wicked_finish"
      finish_wizard_path
    else
      render_wizard
    end
  end

  def update
    @user = current_user
    @user.update(user_params)
    render_wizard @user
  end

  private

    def finish_wizard_path
      redirect_to patient_profile_path
    end

    def user_params
      params.permit(:first_name, :last_name, :gender, :address, :address2,
                    :city, :state, :zip, :social_security_number1,
                    :primary_phone, :primary_phone_type, :secondary_phone_type,
                    :secondary_phone, :contact_method, :social_security_number2,
                    :social_security_number3, :preferred_language, :employer,
                    :relationship_status, :race)
    end

end
