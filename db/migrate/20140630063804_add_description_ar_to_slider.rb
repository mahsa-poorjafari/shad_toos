class AddDescriptionArToSlider < ActiveRecord::Migration
  def change
    add_column :sliders, :description_ar, :string
  end
end
