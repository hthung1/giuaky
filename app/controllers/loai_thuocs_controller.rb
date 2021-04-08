class LoaiThuocsController < ApplicationController
  before_action :set_loai_thuoc, only: %i[ show edit update destroy ]

  # GET /loai_thuocs or /loai_thuocs.json
  def index
    @loai_thuocs = LoaiThuoc.all
  end

  # GET /loai_thuocs/1 or /loai_thuocs/1.json
  def show
  end

  # GET /loai_thuocs/new
  def new
    @loai_thuoc = LoaiThuoc.new
  end

  # GET /loai_thuocs/1/edit
  def edit
  end

  # POST /loai_thuocs or /loai_thuocs.json
  def create
    @loai_thuoc = LoaiThuoc.new(loai_thuoc_params)

    respond_to do |format|
      if @loai_thuoc.save
        format.html { redirect_to @loai_thuoc, notice: "Loai thuoc was successfully created." }
        format.json { render :show, status: :created, location: @loai_thuoc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loai_thuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loai_thuocs/1 or /loai_thuocs/1.json
  def update
    respond_to do |format|
      if @loai_thuoc.update(loai_thuoc_params)
        format.html { redirect_to @loai_thuoc, notice: "Loai thuoc was successfully updated." }
        format.json { render :show, status: :ok, location: @loai_thuoc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loai_thuoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loai_thuocs/1 or /loai_thuocs/1.json
  def destroy
    @loai_thuoc.destroy
    respond_to do |format|
      format.html { redirect_to loai_thuocs_url, notice: "Loai thuoc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loai_thuoc
      @loai_thuoc = LoaiThuoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loai_thuoc_params
      params.require(:loai_thuoc).permit(:maloai, :tenloai, :ghichu)
    end
end
