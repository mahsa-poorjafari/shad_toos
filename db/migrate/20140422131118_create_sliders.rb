class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :description_fa
      t.string :description_en

      t.timestamps
    end
  end
end
