class AddAttachmentFontImageToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :font_image
    end
  end

  def self.down
    drop_attached_file :categories, :font_image
  end
end
