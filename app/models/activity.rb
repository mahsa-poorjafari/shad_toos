# encoding: UTF-8
class Activity < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_en
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
                                            
                                            
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
