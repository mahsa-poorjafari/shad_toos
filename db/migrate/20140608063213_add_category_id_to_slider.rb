class AddCategoryIdToSlider < ActiveRecord::Migration
  def change
    add_column :sliders, :category_id, :integer
  end
end
