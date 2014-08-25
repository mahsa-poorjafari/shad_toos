# encoding: UTF-8
class SubGroup < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_en
  has_attached_file :image, :styles => { :original => "500x500>" , :medium => "300x300>", :small => "150x150#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
  has_many :products
  belongs_to :category
  
  validates :title_fa, :title_ar,  :title_en, :uniqueness => {:message => 'عنوان گروه را تکراری است.'}
  validates :title_fa, :title_en, :title_ar,  :presence => {:message => 'عنوان گروه را وارد کنید.'}
  
  
  def title
    if I18n.locale == :ar
      self.read_attribute("title_ar")
    elsif I18n.locale == :en
      self.read_attribute("title_en")
    else
      self.read_attribute("title_fa")
    end    
  end
  
  def description
    if I18n.locale == :ar
      self.read_attribute("description_ar")
    elsif I18n.locale == :en
      self.read_attribute("description_en")
    else
      self.read_attribute("description_fa")
    end    
  end
end