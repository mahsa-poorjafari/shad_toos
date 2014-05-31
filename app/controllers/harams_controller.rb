class HaramsController < ApplicationController
  before_action :set_haram, only: [:show, :edit, :update, :destroy]

  # GET /harams
  # GET /harams.json
  def index
    @harams = Haram.all
  end

  # GET /harams/1
  # GET /harams/1.json
  def show
  end

  # GET /harams/new
  def new
    @haram = Haram.new
  end

  # GET /harams/1/edit
  def edit
  end

  # POST /harams
  # POST /harams.json
  def create
    @haram = Haram.new(haram_params)

    respond_to do |format|
      if @haram.save
        format.html { redirect_to @haram, notice: 'Haram was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haram }
      else
        format.html { render action: 'new' }
        format.json { render json: @haram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harams/1
  # PATCH/PUT /harams/1.json
  def update
    respond_to do |format|
      if @haram.update(haram_params)
        format.html { redirect_to @haram, notice: 'Haram was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harams/1
  # DELETE /harams/1.json
  def destroy
    @haram.destroy
    respond_to do |format|
      format.html { redirect_to harams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haram
      @haram = Haram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haram_params
      params.require(:haram).permit(:description_fa, :description_en, :description_ar)
    end
end
