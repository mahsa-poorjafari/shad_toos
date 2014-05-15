class AddArFieldToPage < ActiveRecord::Migration
  def change
    add_column :pages, :title_ar, :string
    add_column :pages, :html_text_ar, :text
  end
end
