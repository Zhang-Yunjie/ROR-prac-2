class ModsController < ApplicationController
    def new
        @mod = Mod.new
    end
end