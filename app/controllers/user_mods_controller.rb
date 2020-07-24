class UserModsController < ApplicationController
    def new
        @user_mods = User_mods.new
    end

    def create
        @mod = Mod.find_by_module_title(params[:module_title])
        #@mod.save
        @user_mod = UserMod.new(user_mod_params)
        if @user_mod.save
            flash[:success] = "Module #{@user_mod.mod.module_code} was successfully added to your modules."
            redirect_to user_path
        end
    end 

    def index   
        @user_mods = User_mods.all.order("created_at DESC")
    end

    private
    def user_mod_params
        params.require(:user_mod).permit(:user, :@mod)
    end
end 