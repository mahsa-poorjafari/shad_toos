class AddAttachmentImageToHarams < ActiveRecord::Migration
  def self.up
    change_table :harams do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :harams, :image
  end
end
