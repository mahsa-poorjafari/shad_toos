# encoding: UTF-8
class Page < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  validates :title, :title_fa, :presence => {:message => 'عنوان صفحه متنی را وارد کنید.'}
  validates :title, :title_fa, :uniqueness => {:message => 'عنوان صفحه تکراری است'}
  has_attached_file :image, :styles => { :original => "500x500#" , :medium => "300x300#", :small => "150x150#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
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
