# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
    @category = Category.all
    @activities = Activity.all
    @sliders = Slider.all
  end
  def test
    
  end
end
