class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    before_action :require_same_user,only: [:edit, :update, :destroy]

    def index
        @users = User.paginate(page: params[:page], per_page: 5)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
          session[:user_id] = @user.id
          flash[:success] = "Welcome to NUSchedule, #{@user.username}!" 
          redirect_to user_path(@user)

        else 
            render 'new'
        end
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:success] = "Your account was updated successfully"
            redirect_to root_path
        else
            render 'edit'
        end
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def index
        @users = User.all
    end


    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
end