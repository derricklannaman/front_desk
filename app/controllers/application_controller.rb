class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :calculate_age

  def calculate_age
    return if current_user.blank? || current_user.birthday.blank?
    current_month, current_day, current_year = Date.today.strftime("%m/%d/%Y").split('/')
    birth_month, birth_day, birth_year = current_user.birthday.split('/')
    age = current_year.to_i - birth_year.to_i

    if birth_month.to_i < current_month.to_i
      age
      elsif birth_month.to_i < current_month.to_i
        age + 1
      elsif birth_month.to_i == current_month.to_i
      if birth_day.to_i > current_day.to_i
          age
        else birth_day.to_i <= current_day.to_i
          age + 1
      end
    end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
