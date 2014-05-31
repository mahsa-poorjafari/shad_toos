class RemoveFieldFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :installation, :text
    remove_column :categories, :maintaion, :text
    remove_column :categories, :warranty, :text
    remove_column :categories, :description, :text
    remove_column :categories, :title, :string
  end
end
