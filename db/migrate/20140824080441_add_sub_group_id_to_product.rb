class AddSubGroupIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :sub_group_id, :integer
  end
end
