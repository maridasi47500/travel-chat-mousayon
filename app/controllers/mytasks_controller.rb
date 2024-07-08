class MytasksController < ApplicationController
  before_action :set_mytask, only: %i[ show edit update destroy ]

  # GET /mytasks or /mytasks.json
  def index
    @mytasks = Mytask.all
  end

  # GET /mytasks/1 or /mytasks/1.json
  def show
  end

  # GET /mytasks/new
  def new
    @mytask = Mytask.new(user_id:current_user.try(:id))
  end

  # GET /mytasks/1/edit
  def edit
  end

  # POST /mytasks or /mytasks.json
  def create
    @mytask = Mytask.new(mytask_params)

    respond_to do |format|
      if @mytask.save
        format.html { redirect_to mytask_url(@mytask), notice: "Mytask was successfully created." }
        format.json { render :show, status: :created, location: @mytask }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytasks/1 or /mytasks/1.json
  def update
    respond_to do |format|
      if @mytask.update(mytask_params)
        format.html { redirect_to mytask_url(@mytask), notice: "Mytask was successfully updated." }
        format.json { render :show, status: :ok, location: @mytask }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytasks/1 or /mytasks/1.json
  def destroy
    @mytask.destroy!

    respond_to do |format|
      format.html { redirect_to mytasks_url, notice: "Mytask was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytask
      @mytask = Mytask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mytask_params
      params.require(:mytask).permit(:name, :user_id)
    end
end
