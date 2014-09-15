# encoding: UTF-8
class AmountRemainsController < ApplicationController
  before_action :set_amount_remain, only: [:show, :edit, :update, :destroy]
  before_filter :check_autentication, only: [  :destroy]
  # GET /amount_remains
  # GET /amount_remains.json
  def index
    if is_admin?
      @amount_remains = AmountRemain.all
    elsif current_user.present?
      @amount_remains = AmountRemain.where(user_id: current_user.id)
    else
      flash[:Permission] = 'فقط اعضا به این قسمت دسترسی دارند.'
    end
  end

  # GET /amount_remains/1
  # GET /amount_remains/1.json
  def show
  end

  # GET /amount_remains/new
  def new
    @amount_remain = AmountRemain.new
    @users = User.where.not(user_name: 'admin')
  end

  # GET /amount_remains/1/edit
  def edit
  end

  # POST /amount_remains
  # POST /amount_remains.json
  def create
    @amount_remain = AmountRemain.new(amount_remain_params)

    respond_to do |format|
      if @amount_remain.save
        format.html { redirect_to @amount_remain, notice: 'مانده حساب ثبت شد.' }
        format.json { render action: 'show', status: :created, location: @amount_remain }
      else
        format.html { render action: 'new' }
        format.json { render json: @amount_remain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amount_remains/1
  # PATCH/PUT /amount_remains/1.json
  def update
    respond_to do |format|
      if @amount_remain.update(amount_remain_params)
        format.html { redirect_to @amount_remain, notice: 'ویرایش اطلاعات انحام شد.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amount_remain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amount_remains/1
  # DELETE /amount_remains/1.json
  def destroy
    @amount_remain.destroy
    respond_to do |format|
      format.html { redirect_to amount_remains_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amount_remain
      @amount_remain = AmountRemain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amount_remain_params
      params.require(:amount_remain).permit(:amount, :user_id, :description, :admin_description)
    end
end
