# encoding: UTF-8
class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy, :load_slides]
  before_filter :check_autentication, only: [ :edit, :update, :destroy]
  before_filter :load_slides, only:[:show]
  # GET /categories
  # GET /categories.json
  def index
    
    @sliders = Slider.all
    
    @categories = Category.all  
    
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category }
      else
        format.html { render action: 'new' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:title_fa, :title_en, :description_fa, :description_en, :image, :title_ar, :description_ar, :slider_box, :category_type )
    end

    def load_slides
      @sliders = @category.sliders      
    end
end
