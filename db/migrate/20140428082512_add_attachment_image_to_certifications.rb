class AddAttachmentImageToCertifications < ActiveRecord::Migration
  def self.up
    change_table :certifications do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :certifications, :image
  end
end
