class BrightsController < ApplicationController
  before_action :set_bright, only: [:show, :edit, :update, :destroy]

  # GET /brights
  # GET /brights.json
  def index
    @brights = Bright.all
  end

  # GET /brights/1
  # GET /brights/1.json
  def show
  end

  # GET /brights/new
  def new
    @bright = Bright.new
  end

  # GET /brights/1/edit
  def edit
  end

  # POST /brights
  # POST /brights.json
  def create
    @bright = Bright.new(bright_params)

    respond_to do |format|
      if @bright.save
        format.html { redirect_to @bright, notice: 'Bright was successfully created.' }
        format.json { render :show, status: :created, location: @bright }
      else
        format.html { render :new }
        format.json { render json: @bright.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brights/1
  # PATCH/PUT /brights/1.json
  def update
    respond_to do |format|
      if @bright.update(bright_params)
        format.html { redirect_to @bright, notice: 'Bright was successfully updated.' }
        format.json { render :show, status: :ok, location: @bright }
      else
        format.html { render :edit }
        format.json { render json: @bright.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brights/1
  # DELETE /brights/1.json
  def destroy
    @bright.destroy
    respond_to do |format|
      format.html { redirect_to brights_url, notice: 'Bright was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bright
      @bright = Bright.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bright_params
      params.require(:bright).permit(:name, :age, :address, :phone)
    end
end
