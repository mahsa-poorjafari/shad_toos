# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
    @category = Category.all
    @activities = Activity.all
  end
  def test
    
  end
end
