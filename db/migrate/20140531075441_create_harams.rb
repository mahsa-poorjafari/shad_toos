class CreateHarams < ActiveRecord::Migration
  def change
    create_table :harams do |t|
      t.string :description_fa
      t.string :description_en
      t.string :description_ar

      t.timestamps
    end
  end
end
