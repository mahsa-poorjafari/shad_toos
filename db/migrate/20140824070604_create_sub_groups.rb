class CreateSubGroups < ActiveRecord::Migration
  def change
    create_table :sub_groups do |t|
      t.string :title_en
      t.string :title_fa
      t.string :title_ar
      t.string :description_en
      t.string :description_fa
      t.string :description_ar
      t.integer :category_id

      t.timestamps
    end
  end
end
