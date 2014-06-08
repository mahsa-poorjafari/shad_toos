# encoding: UTF-8
class Page < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  validates :title, :title_fa, :presence => {:message => 'عنوان صفحه متنی را وارد کنید.'}
  validates :title, :title_fa, :uniqueness => {:message => 'عنوان صفحه تکراری است'}
  
  def title
    if I18n.locale == :ar
      self.read_attribute("title_ar")
    elsif I18n.locale == :en
      self.read_attribute("title")
    else
      self.read_attribute("title_fa")
    end
    
  end
  
  def html_text
    if I18n.locale == :ar
      self.read_attribute("html_text_ar")
    elsif I18n.locale == :en
      self.read_attribute("html_text")
    else
      self.read_attribute("html_text_fa")
    end
    
  end
  
end
