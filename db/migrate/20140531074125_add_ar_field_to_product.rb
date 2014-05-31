class AddArFieldToProduct < ActiveRecord::Migration
  def change
    add_column :products, :title_ar, :string
    add_column :products, :description_ar, :text
  end
end
