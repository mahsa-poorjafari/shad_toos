class AddTitleToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :title_fa, :string
    add_column :categories, :title_en, :string
  end
end
