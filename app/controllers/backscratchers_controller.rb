class BackscratchersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @backscratchers = Backscratcher.select(:id, :name, :description, :price, :sizes)
        render json: @backscratchers
    end

    def show   
        @backscratcher = Backscratcher.select(:id, :name, :description, :price, :sizes).find(params[:id])
        render json: @backscratcher
    end   

    def new
        @backscratcher = Backscratcher.new
    end

    def create

        @backscratcher = Backscratcher.new(backscratcher_params)

        if @backscratcher.save
            render json: @backscratcher
        else
            render error: {error: 'Failed to add backscratcher record'}, status: 400
        end
    end


    def edit
        @backscratcher = Backscratcher.find(params[:id])
    end
    

    def update
        @backscratcher = Backscratcher.find(params[:id])
        if @backscratcher.update(backscratcher_params)
            render json: @backscratcher
        else
            render :edit, status: :unprocessable_entity
        end
    end
    

    def destroy
        @backscratcher = Backscratcher.find(params[:id])
        if @backscratcher.destroy
            render json: @backscratcher
        end
        
    end



    private
    def backscratcher_params
        params.require(:backscratcher).permit(:name, :description, :price, :sizes => [])
    end

end
