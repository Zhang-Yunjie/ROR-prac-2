class UserModsController < ApplicationController
    def new
      @user_mods = User_mods.new
    end

    def create
			@user_mod = UserMod.new(user_mod_params)
			if @user_mod.save
        flash[:success] = "Module #{@user_mod.mod.module_code} was successfully added to your modules."
        redirect_to mod_path(id: params[:user_mod][:mod_id])
			else
				flash[:danger] = @user_mod.errors.full_messages.first
				redirect_to mod_path(id: params[:user_mod][:mod_id])
			end
		end

    def index
      @user_mods = User_mods.all.order("created_at DESC")
    end

    private
    def user_mod_params
      params.require(:user_mod).permit(:user_id, :mod_id, :semester_id)
    end
end