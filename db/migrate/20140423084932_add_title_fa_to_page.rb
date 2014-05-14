class AddTitleFaToPage < ActiveRecord::Migration
  def change
    add_column :pages, :title_fa, :string
    add_column :pages, :html_text_fa, :text
  end
end
