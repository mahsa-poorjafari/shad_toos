class AddCategoryIdToCertification < ActiveRecord::Migration
  def change
    add_column :certifications, :category_id, :integer
  end
end
