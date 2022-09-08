class UsersController < ApplicationController

    def new

    end

    def create

    end

    def show

    end

    def edit

    end

    def update

    end

    private

    def user_params(params)
        params.require(:user).permit(:username, :first_name, :last_name, :password)
    end

end