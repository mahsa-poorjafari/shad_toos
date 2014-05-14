# encoding: UTF-8
class Page < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  validates :title, :title_fa, :presence => {:message => 'عنوان صفحه متنی را وارد کنید.'}
  validates :title, :title_fa, :uniqueness => {:message => 'عنوان صفحه تکراری است'}
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  def html_text
    I18n.locale == :fa ? self.read_attribute("html_text_fa") : self.read_attribute("html_text")
  end
  
end
