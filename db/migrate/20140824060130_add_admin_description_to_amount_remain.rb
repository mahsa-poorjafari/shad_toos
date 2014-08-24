class AddAdminDescriptionToAmountRemain < ActiveRecord::Migration
  def change
    add_column :amount_remains, :admin_description, :string
  end
end
