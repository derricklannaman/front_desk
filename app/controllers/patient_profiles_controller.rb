class PatientProfilesController < ApplicationController

  before_action :authenticate_user!

  def show
    @conditions = current_user.medical_history.attributes.keep_if {|key, value| value == true }.keys
    @conditions << "No Medical conditions selected" if @conditions.empty?
  end
end
