class SessionsController < ApplicationController

    def new
    end

    def create
        binding.pry
        user = User.find_by(:username => params[:username])
        if user && !!user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = "Please enter valid credentials"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/signin'
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end