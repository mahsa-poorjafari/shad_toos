class RemoveFontImageFromCategory < ActiveRecord::Migration
  def self.up
    remove_attachment :categories, :font_image
  end

  def self.down
    add_attachment :categories, :font_image
  end
end
