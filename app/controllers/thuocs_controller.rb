class ThuocsController < ApplicationController
  before_action :set_thuoc, only: %i[ show edit update destroy ]

  # GET /thuocs or /thuocs.json
  def index
    @thuocs = Thuoc.all
  end

  # GET /thuocs/1 or /thuocs/1.json
  def show
  end

  # GET /thuocs/new
  def new
    @thuoc = Thuoc.new
  end

  # GET /thuocs/1/edit
  def edit
  end

  # POST /thuocs or /thuocs.json
  def create
    @thuoc = Thuoc.new(thuoc_params)

    respond_to do |format|
      if @thuoc.save
        format.html { redirect_to @thuoc, notice: "Thuoc was successfully created." }
        format.json { render :show, status: :created, location: @thuoc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thuocs/1 or /thuocs/1.json
  def update
    respond_to do |format|
      if @thuoc.update(thuoc_params)
        format.html { redirect_to @thuoc, notice: "Thuoc was successfully updated." }
        format.json { render :show, status: :ok, location: @thuoc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thuocs/1 or /thuocs/1.json
  def destroy
    @thuoc.destroy
    respond_to do |format|
      format.html { redirect_to thuocs_url, notice: "Thuoc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thuoc
      @thuoc = Thuoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thuoc_params
      params.require(:thuoc).permit(:mathuoc, :TenThuoc, :MaHangSX, :MaNCC, :CongDung, :MaLoai, :GhiChu)
    end
end
