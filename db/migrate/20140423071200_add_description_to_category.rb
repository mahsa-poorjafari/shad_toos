class AddDescriptionToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :description_fa, :text
    add_column :categories, :description_en, :text
  end
end
