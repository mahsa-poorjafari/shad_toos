# encoding: UTF-8
class Product < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  
  has_many :pictures
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  belongs_to :category
  validates :title, :title_fa, :presence => {:message => 'عنوان محصول را وارد کنید.'}
  validates :title, :title_fa, :uniqueness => {:message => 'عنوان محصول تکراری است'}
  
  def title
    if I18n.locale == :ar
      self.read_attribute("title_ar")
    elsif I18n.locale == :en
      self.read_attribute("title")
    else
      self.read_attribute("title_fa")
    end
    
  end
  
  def description
    if I18n.locale == :ar
      self.read_attribute("description_ar")
    elsif I18n.locale == :en
      self.read_attribute("description")
    else
      self.read_attribute("description_fa")
    end
    
  end
  
end
