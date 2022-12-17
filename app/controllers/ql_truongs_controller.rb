class QlTruongsController < ApplicationController
  before_action :set_ql_truong, only: %i[ show edit update destroy ]

  # GET /ql_truongs or /ql_truongs.json
  def index
    @ql_truongs = QlTruong.all
  end

  # GET /ql_truongs/1 or /ql_truongs/1.json
  def show
  end

  # GET /ql_truongs/new
  def new
    @ql_truong = QlTruong.new
  end

  # GET /ql_truongs/1/edit
  def edit
  end

  # POST /ql_truongs or /ql_truongs.json
  def create
    @ql_truong = QlTruong.new(ql_truong_params)

    respond_to do |format|
      if @ql_truong.save
        format.html { redirect_to ql_truong_url(@ql_truong), notice: "Ql truong was successfully created." }
        format.json { render :show, status: :created, location: @ql_truong }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ql_truong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ql_truongs/1 or /ql_truongs/1.json
  def update
    respond_to do |format|
      if @ql_truong.update(ql_truong_params)
        format.html { redirect_to ql_truong_url(@ql_truong), notice: "Ql truong was successfully updated." }
        format.json { render :show, status: :ok, location: @ql_truong }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ql_truong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ql_truongs/1 or /ql_truongs/1.json
  def destroy
    @ql_truong.destroy

    respond_to do |format|
      format.html { redirect_to ql_truongs_url, notice: "Ql truong was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ql_truong
      @ql_truong = QlTruong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ql_truong_params
      params.require(:ql_truong).permit(:ten, :chuyen_nganh, :vi_tri, :thoi_gian_hd, :sl_hoc_sinh, :nganh_dt)
    end
end
