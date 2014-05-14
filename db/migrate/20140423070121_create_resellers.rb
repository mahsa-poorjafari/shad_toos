class CreateResellers < ActiveRecord::Migration
  def change
    create_table :resellers do |t|
      t.string :title_fa
      t.string :title_en
      t.string :Management_name_fa
      t.string :Management_name_en
      t.text :phone
      t.text :address_fa
      t.text :address_en

      t.timestamps
    end
  end
end
