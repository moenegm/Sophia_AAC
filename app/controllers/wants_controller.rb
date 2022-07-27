class WantsController < ApplicationController
  before_action :set_want, only: %i[ show edit update destroy ]

  # GET /wants or /wants.json
  def index
    @wants = Want.all
  end

  # GET /wants/1 or /wants/1.json
  def show
  end

  # GET /wants/new
  def new
    @want = Want.new
  end

  # GET /wants/1/edit
  def edit
  end

  # POST /wants or /wants.json
  def create
    @want = Want.new(want_params)

    respond_to do |format|
      if @want.save
        format.html { redirect_to want_url(@want), notice: "Want was successfully created." }
        format.json { render :show, status: :created, location: @want }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @want.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wants/1 or /wants/1.json
  def update
    respond_to do |format|
      if @want.update(want_params)
        format.html { redirect_to want_url(@want), notice: "Want was successfully updated." }
        format.json { render :show, status: :ok, location: @want }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @want.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wants/1 or /wants/1.json
  def destroy
    @want.destroy

    respond_to do |format|
      format.html { redirect_to wants_url, notice: "Want was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_want
      @want = Want.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def want_params
      params.require(:want).permit(:title, :descrition, :image, :user_id)
    end
end
