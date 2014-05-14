class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :email
      t.string :name
      t.string :phone
      t.text :text
      t.boolean :visited, :default => false

      t.timestamps
    end
  end
end
