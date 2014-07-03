class AddFieldToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :title, :string
    add_column :pictures, :description_fa, :text
    add_column :pictures, :description_ar, :text
    add_column :pictures, :title_fa, :string
    add_column :pictures, :title_ar, :string
  end
end
