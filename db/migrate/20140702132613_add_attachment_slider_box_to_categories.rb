class AddAttachmentSliderBoxToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :slider_box
    end
  end

  def self.down
    drop_attached_file :categories, :slider_box
  end
end
