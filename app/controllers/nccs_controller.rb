class NccsController < ApplicationController
  before_action :set_ncc, only: %i[ show edit update destroy ]

  # GET /nccs or /nccs.json
  def index
    @nccs = Ncc.all
  end

  # GET /nccs/1 or /nccs/1.json
  def show
  end

  # GET /nccs/new
  def new
    @ncc = Ncc.new
  end

  # GET /nccs/1/edit
  def edit
  end

  # POST /nccs or /nccs.json
  def create
    @ncc = Ncc.new(ncc_params)

    respond_to do |format|
      if @ncc.save
        format.html { redirect_to @ncc, notice: "Ncc was successfully created." }
        format.json { render :show, status: :created, location: @ncc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ncc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nccs/1 or /nccs/1.json
  def update
    respond_to do |format|
      if @ncc.update(ncc_params)
        format.html { redirect_to @ncc, notice: "Ncc was successfully updated." }
        format.json { render :show, status: :ok, location: @ncc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ncc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nccs/1 or /nccs/1.json
  def destroy
    @ncc.destroy
    respond_to do |format|
      format.html { redirect_to nccs_url, notice: "Ncc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ncc
      @ncc = Ncc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ncc_params
      params.require(:ncc).permit(:macc, :tenncc, :diachi, :thongtin)
    end
end
