class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :title_fa
      t.string :title_en

      t.timestamps
    end
  end
end
