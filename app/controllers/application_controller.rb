class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    def logged_in?
        if current_user == nil
            redirect_to '/signin'
        end
    end

    def current_user
        user = User.find_by(id: session[:user_id])
        user.nil? ? nil : user
    end
end
