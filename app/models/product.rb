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
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
end
