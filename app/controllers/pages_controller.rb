class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :direct_new_patient


  def index
    @num = 10
  end

  def activity_panel
  end

  def direct_new_patient
    return unless current_user
    if current_user.intake_complete == false
      redirect_to '/patient_intake_steps/step_1 '
    end
  end


end
