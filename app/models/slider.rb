# encoding: UTF-8
class Slider < ActiveRecord::Base
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  has_attached_file :image, :styles => { :small => "150x150",
                                        :gallery_size => {:geometry => "1286x441#", :processors => [:jcropper]}}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  
  def cropping?
      p '123cropping'
     p  (!crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?)
     !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
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
