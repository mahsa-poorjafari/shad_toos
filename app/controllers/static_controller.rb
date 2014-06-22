# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
    @category = Category.all
    @activity = Activity.all
  end
  def test
    
  end
end
