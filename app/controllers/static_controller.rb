# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
  end
  def test
    
  end
end
