class BackscratchersController < ApplicationController
  before_action :set_backscratcher, only: %i[ show edit update destroy ]

  # GET /backscratchers
  def index
    @backscratchers = Backscratcher.all
  end

  # GET /backscratchers/1
  def show
  end

  # GET /backscratchers/new
  def new
    @backscratcher = Backscratcher.new
  end

  # GET /backscratchers/1/edit
  def edit
  end

  # POST /backscratchers
  def create
    @backscratcher = Backscratcher.new(backscratcher_params)

    respond_to do |format|
      if @backscratcher.save
        format.html { redirect_to @backscratcher, notice: "Backscratcher was successfully created." }
        format.json { render :show, status: :created, location: @backscratcher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @backscratcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backscratchers/1
  def update
    respond_to do |format|
      if @backscratcher.update(backscratcher_params)
        format.html { redirect_to @backscratcher, notice: "Backscratcher was successfully updated." }
        format.json { render :show, status: :ok, location: @backscratcher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @backscratcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backscratchers/1
  def destroy
    @backscratcher.destroy
    respond_to do |format|
      format.html { redirect_to backscratchers_url, notice: "Backscratcher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_backscratcher
      @backscratcher = Backscratcher.find(params[:id])
    end

    def backscratcher_params
      params.require(:backscratcher).permit(:name, :description, :price, :sizes)
    end
end
