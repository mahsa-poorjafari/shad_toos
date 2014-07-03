# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
    @category = Category.all
    @activities = Activity.all
    @sliders = Slider.where( "category_id is null")
  end
  def test
    
  end
end
