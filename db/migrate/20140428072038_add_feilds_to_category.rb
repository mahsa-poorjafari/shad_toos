class AddFeildsToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :installation, :text
    add_column :categories, :maintaion, :text
    add_column :categories, :warranty, :text
  end
end
