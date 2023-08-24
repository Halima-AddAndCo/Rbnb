class BallonsController < ApplicationController
  before_action :set_ballon, only: %i[ show edit update destroy ]

  # GET /ballons or /ballons.json
  def index
    @ballons = Ballon.all
  end

  # GET /ballons/1 or /ballons/1.json
  def show
    @ballon = Ballon.find(params[:id])
  end

  # GET /ballons/new
  def new
    @ballon = Ballon.new
  end

  # GET /ballons/1/edit
  def edit
  end

  # POST /ballons or /ballons.json
  def create
    @ballon = Ballon.new(ballon_params)

    respond_to do |format|
      if @ballon.save
        format.html { redirect_to ballon_url(@ballon), notice: "Ballon was successfully created." }
        format.json { render :show, status: :created, location: @ballon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ballon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballons/1 or /ballons/1.json
  def update
    respond_to do |format|
      if @ballon.update(ballon_params)
        format.html { redirect_to ballon_url(@ballon), notice: "Ballon was successfully updated." }
        format.json { render :show, status: :ok, location: @ballon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ballon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballons/1 or /ballons/1.json
  def destroy
    @ballon.destroy

    respond_to do |format|
      format.html { redirect_to ballons_url, notice: "Ballon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballon
      @ballon = Ballon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ballon_params
      params.require(:ballon).permit(:title, :description, :price, :user_id)
    end
end
