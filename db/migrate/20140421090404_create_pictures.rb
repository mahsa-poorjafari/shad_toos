class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :description
      t.integer :product_id

      t.timestamps
    end
  end
end
