class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title_fa
      t.string :title_en
      t.string :title_ar
      t.text :description_fa
      t.text :description_en
      t.text :description_ar

      t.timestamps
    end
  end
end
