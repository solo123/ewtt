class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      if resource_name == :employee
        "travel_admin/login"
      else
        "travel_website/login"
      end
    else
      "travel_website/application"
    end
  end
end

