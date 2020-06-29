class UserModsController < ApplicationController
    def create
        @mod = Mod.find(params[:mod_id])
        mod.save
        @user_mod = UserMods.create(user: current_user, mod: mod)
        flash[:success] = "Module #{@user_mod.mod.module_code} was successfully added to your modules."
        redirect_to user_path
    end
end 