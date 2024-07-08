class YourtasksController < ApplicationController
  before_action :set_yourtask, only: %i[ show edit update destroy ]

  # GET /yourtasks or /yourtasks.json
  def index
    @yourtasks = Yourtask.all
  end

  # GET /yourtasks/1 or /yourtasks/1.json
  def show
  end

  # GET /yourtasks/new
  def new
    @yourtask = Yourtask.new
  end

  # GET /yourtasks/1/edit
  def edit
  end

  # POST /yourtasks or /yourtasks.json
  def create
    @yourtask = Yourtask.new(yourtask_params)

    respond_to do |format|
      if @yourtask.save
        format.html { redirect_to yourtask_url(@yourtask), notice: "Yourtask was successfully created." }
        format.json { render :show, status: :created, location: @yourtask }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @yourtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yourtasks/1 or /yourtasks/1.json
  def update
    respond_to do |format|
      if @yourtask.update(yourtask_params)
        format.html { redirect_to yourtask_url(@yourtask), notice: "Yourtask was successfully updated." }
        format.json { render :show, status: :ok, location: @yourtask }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @yourtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yourtasks/1 or /yourtasks/1.json
  def destroy
    @yourtask.destroy!

    respond_to do |format|
      format.html { redirect_to yourtasks_url, notice: "Yourtask was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yourtask
      @yourtask = Yourtask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yourtask_params
      params.require(:yourtask).permit(:mytask_id, :user_id)
    end
end
