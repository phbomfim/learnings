# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      if user_signed_in?
        if current_user.admin?
          
        else
          redirect_to root_path, alert: "You must be admin to do this."
        end
      else
          redirect_to root_path, alert: "You must be logged to do this."
      end
    end
  end
end
