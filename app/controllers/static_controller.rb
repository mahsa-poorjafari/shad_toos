# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
    @about_us = Page.find_by_title( "About us")
    @contact_us = Page.find_by_title( "Contact us")
    @category = Category.all
    @activities = Activity.all
    @sliders = Slider.where( "category_id is null")
  end
  def test
    
  end
end
