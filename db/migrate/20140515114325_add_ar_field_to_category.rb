class AddArFieldToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :title_ar, :string
    add_column :categories, :description_ar, :text
  end
end
