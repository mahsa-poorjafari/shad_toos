class DropTableSubGroup < ActiveRecord::Migration
  def change
    drop_table :sub_groups
  end
end
