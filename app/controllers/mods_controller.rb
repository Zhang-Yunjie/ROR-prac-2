class ModsController < ApplicationController
    def new
      @mod = Mod.new
    end

    def create
      @mod = Mod.new(mod_params)
      if @mod.save
        flash[:notice] = "Module is successfully created"
        redirect_to mod_path(@mod)
      else
        render 'new'
      end
    end

    def edit
      @mod = Mod.find(params[:id])
    end

    def update
      @mod = Mod.find(params[:id])
      if @mod.update(mod_params)
        flash[:success] = "Module information was updated successfully"
        redirect_to root_path
      else
        render 'edit'
      end
    end

    def index
      @mods = Mod.paginate(page: params[:page], per_page: 5)
    end

    def show
      @mod = Mod.find(params[:id])
      @user_mod = UserMod.new
    end

    def search
        @mods = Mod.where("module_title LIKE ? OR module_code LIKE ?",
            "%" + params[:q] + "%", "%" + params[:q] + "%")
    end


    private
    def mod_params
        params.require(:mod).permit(:module_code, :module_title, :module_MC, :module_description, :module_prerequisite)
    end
end