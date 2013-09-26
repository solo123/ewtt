class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_filter :configure_permitted_parameters, if: :devise_controller?
  helper TravelWebsite::ApplicationHelper

  def layout_by_resource
    if devise_controller? && resource_name == :employee
      "travel_admin/login"
    else
      "travel_website/application"
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:login_name, :email, :password) }
      devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:login, :password, :remeber_me) }
    end
end

