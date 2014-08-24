# encoding: UTF-8
class SubGroupsController < ApplicationController
  before_action :set_sub_group, only: [:show, :edit, :update, :destroy]

  # GET /sub_groups
  # GET /sub_groups.json
  def index
    @sub_groups = SubGroup.all
  end

  # GET /sub_groups/1
  # GET /sub_groups/1.json
  def show
  end

  # GET /sub_groups/new
  def new
    @sub_group = SubGroup.new
    p '------category_id------'
    p @category_id = params[:category_id]
    @category = Category.find(@category_id)
  end

  # GET /sub_groups/1/edit
  def edit
  end

  # POST /sub_groups
  # POST /sub_groups.json
  def create
    @sub_group = SubGroup.new(sub_group_params)
    
    respond_to do |format|
      if @sub_group.save
        format.html { redirect_to @sub_group, notice: 'زیرگروه ایجاد شد.' }
        format.json { render action: 'show', status: :created, location: @sub_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @sub_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_groups/1
  # PATCH/PUT /sub_groups/1.json
  def update
    respond_to do |format|
      if @sub_group.update(sub_group_params)
        format.html { redirect_to @sub_group, notice: 'ویرایش انجام شد.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sub_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_groups/1
  # DELETE /sub_groups/1.json
  def destroy
    @sub_group.destroy
    respond_to do |format|
      format.html { redirect_to sub_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_group
      @sub_group = SubGroup.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_group_params
      params.require(:sub_group).permit(:title_en, :title_fa, :title_ar, :description_en, :description_fa, :description_ar, :category_id, :image)
    end
end
