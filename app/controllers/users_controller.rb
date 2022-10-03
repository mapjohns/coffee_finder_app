class UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @coffees = Coffee.all
        @stores = Store.all
        @reviews = Review.all
        @locations = Location.all
    end

    private

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password,:password_confirmation, :admin)
    end

end