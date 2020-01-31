class ApplicationController < ActionController::Base
  layout -> {
    if devise_controller? && current_user == 'Admin'
      "devise"
    end
  }
#
  protected

  def after_sign_in_path_for(dashboards)
    # return the path based on resource
    dashboards_path
  end

end
