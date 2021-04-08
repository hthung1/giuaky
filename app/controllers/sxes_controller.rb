class SxesController < ApplicationController
  before_action :set_sx, only: %i[ show edit update destroy ]

  # GET /sxes or /sxes.json
  def index
    @sxes = Sx.all
  end

  # GET /sxes/1 or /sxes/1.json
  def show
  end

  # GET /sxes/new
  def new
    @sx = Sx.new
  end

  # GET /sxes/1/edit
  def edit
  end

  # POST /sxes or /sxes.json
  def create
    @sx = Sx.new(sx_params)

    respond_to do |format|
      if @sx.save
        format.html { redirect_to @sx, notice: "Sx was successfully created." }
        format.json { render :show, status: :created, location: @sx }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sxes/1 or /sxes/1.json
  def update
    respond_to do |format|
      if @sx.update(sx_params)
        format.html { redirect_to @sx, notice: "Sx was successfully updated." }
        format.json { render :show, status: :ok, location: @sx }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sxes/1 or /sxes/1.json
  def destroy
    @sx.destroy
    respond_to do |format|
      format.html { redirect_to sxes_url, notice: "Sx was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sx
      @sx = Sx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sx_params
      params.require(:sx).permit(:maSX, :tenHangs, :quocGia)
    end
end
