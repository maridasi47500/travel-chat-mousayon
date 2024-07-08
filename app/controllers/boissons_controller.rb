class BoissonsController < ApplicationController
  before_action :set_boisson, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /boissons or /boissons.json
  def index
    @boissons = Boisson.all
  end

  # GET /boissons/1 or /boissons/1.json
  def show
  end

  # GET /boissons/new
  def new
    @boisson = Boisson.new
  end

  # GET /boissons/1/edit
  def edit
  end

  # POST /boissons or /boissons.json
  def create
    @boisson = Boisson.new(boisson_params)

    respond_to do |format|
      if @boisson.save
        NewBoissonJob.perform_later(@boisson)
        format.html { redirect_to boisson_url(@boisson), notice: "Boisson was successfully created." }
        format.json { render :show, status: :created, location: @boisson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boisson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boissons/1 or /boissons/1.json
  def update
    respond_to do |format|
      if @boisson.update(boisson_params)
        format.html { redirect_to boisson_url(@boisson), notice: "Boisson was successfully updated." }
        format.json { render :show, status: :ok, location: @boisson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boisson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boissons/1 or /boissons/1.json
  def destroy
    @boisson.destroy!

    respond_to do |format|
      format.html { redirect_to boissons_url, notice: "Boisson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boisson
      @boisson = Boisson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boisson_params
      params.require(:boisson).permit(:drink_id, :user_id)
    end
end
