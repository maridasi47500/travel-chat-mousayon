class PlacetasksController < ApplicationController
  before_action :set_placetask, only: %i[ show edit update destroy ]

  # GET /placetasks or /placetasks.json
  def index
    @placetasks = Placetask.all
  end

  # GET /placetasks/1 or /placetasks/1.json
  def show
  end

  # GET /placetasks/new
  def new
    @placetask = Placetask.new(user_id: current_user.try(:id))
  end

  # GET /placetasks/1/edit
  def edit
  end

  # POST /placetasks or /placetasks.json
  def create
    @placetask = Placetask.new(placetask_params)

    respond_to do |format|
      if @placetask.save
        NewPlaceTaskJob.perform_later(@placetask)
        format.html { redirect_to placetask_url(@placetask), notice: "Placetask was successfully created." }
        format.json { render :show, status: :created, location: @placetask }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @placetask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /placetasks/1 or /placetasks/1.json
  def update
    respond_to do |format|
      if @placetask.update(placetask_params)
        format.html { redirect_to placetask_url(@placetask), notice: "Placetask was successfully updated." }
        format.json { render :show, status: :ok, location: @placetask }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @placetask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /placetasks/1 or /placetasks/1.json
  def destroy
    @placetask.destroy!

    respond_to do |format|
      format.html { redirect_to placetasks_url, notice: "Placetask was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placetask
      @placetask = Placetask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def placetask_params
      params.require(:placetask).permit(:name, :place_id, :user_id)
    end
end
