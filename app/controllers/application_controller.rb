class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    before_action :logged_in?

    def logged_in?
        if current_user == nil
            flash[:notice] = "You must be logged in to continue."
            redirect_to '/signin'
        end
    end

    def current_user
        user = User.find_by(id: session[:user_id])
        user.nil? ? nil : user
    end

    def is_admin?
        if current_user.admin == false
            flash[:notice] = "You must be an admin to do that."
            redirect_to '/coffees'
        end
    end
end
