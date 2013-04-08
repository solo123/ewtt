class ApplicationController < ActionController::Base
  layout :layout_by_resource
  helper TravelWebsite::ApplicationHelper

  def layout_by_resource
    if devise_controller? && resource_name == :employee
      "travel_admin/login"
    else
      "travel_website/application"
    end
  end
end

