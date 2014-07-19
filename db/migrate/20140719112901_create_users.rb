class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :colleague_title
      t.string :user_name
      t.string :phone
      t.string :mobile
      t.text :address
      t.string :amount_remains
      t.text :description

      t.timestamps
    end
  end
end
