class AddAttachmentImageToSubGroups < ActiveRecord::Migration
  def self.up
    change_table :sub_groups do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :sub_groups, :image
  end
end
