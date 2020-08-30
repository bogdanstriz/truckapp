class LoadsController < ApplicationController
    
    def index
        @loads = Load.all
    end

    def show
        @load = Load.find(params[:id])
    end

    def new
        @load = Load.new
    end

    def edit
        @load = Load.find(params[:id])
    end

    def create
        @load = Load.new(load_params)
       
        if @load.save
            redirect_to @load
        else
            render 'new'
        end
    end

    def update
        @load = Load.find(params[:id])
       
        if @load.update(load_params)
          redirect_to @load
        else
          render 'edit'
        end
    end

    def destroy
        @load = Load.find(params[:id])
        @load.destroy
       
        redirect_to loads_path
      end

    private
    def load_params
        params.require(:load).permit(:title, :text)
    end
end
