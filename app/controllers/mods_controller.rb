class ModsController < ApplicationController
    def new
        @mod = Mod.new
    end

    def create
        @mod = Mod.new(mod_params)
        if @mod.save
            flash[:notice] = "Module is successfully created"
            redirect_to mod_path[@mod]
        else
            render 'new'
        end
    end

    def index
        @mods = Mod.paginate(page: params[:page], per_page: 5)
    end

    def show
        @mod = Mod.find(params[:id])
    end

    private
    def mod_params
        params.require(:mod).permit(:module_code, :module_title, :module_MC, :module_description)
    end 
end