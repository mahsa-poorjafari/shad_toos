class RemoveFieldFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :amount_remains, :string
  end
end
