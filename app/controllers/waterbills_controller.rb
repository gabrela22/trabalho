class WaterbillsController < ApplicationController
  before_action :set_waterbill, only: [:show, :edit, :update, :destroy]

  # GET /waterbills
  # GET /waterbills.json
  def index
    @waterbills = Waterbill.all
  end

  # GET /waterbills/1
  # GET /waterbills/1.json
  def show
  end

  # GET /waterbills/new
  def new
    @waterbill = Waterbill.new
  end

  # GET /waterbills/1/edit
  def edit
  end

  # POST /waterbills
  # POST /waterbills.json
  def create
    @waterbill = Waterbill.new(waterbill_params)

    respond_to do |format|
      if @waterbill.save
        format.html { redirect_to @waterbill, notice: 'Waterbill was successfully created.' }
        format.json { render :show, status: :created, location: @waterbill }
      else
        format.html { render :new }
        format.json { render json: @waterbill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waterbills/1
  # PATCH/PUT /waterbills/1.json
  def update
    respond_to do |format|
      if @waterbill.update(waterbill_params)
        format.html { redirect_to @waterbill, notice: 'Waterbill was successfully updated.' }
        format.json { render :show, status: :ok, location: @waterbill }
      else
        format.html { render :edit }
        format.json { render json: @waterbill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waterbills/1
  # DELETE /waterbills/1.json
  def destroy
    @waterbill.destroy
    respond_to do |format|
      format.html { redirect_to waterbills_url, notice: 'Waterbill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waterbill
      @waterbill = Waterbill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waterbill_params
      params.require(:waterbill).permit(:consumer, :month, :year, :consumption)
    end
end
