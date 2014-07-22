class CreateAmountRemains < ActiveRecord::Migration
  def change
    create_table :amount_remains do |t|
      t.string :amount
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
