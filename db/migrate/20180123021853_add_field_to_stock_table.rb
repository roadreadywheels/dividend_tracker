class AddFieldToStockTable < ActiveRecord::Migration[5.1]
  def up
    add_column "stocks", "company_details", :string
  end

  def down
    remove_column "admin_users", "company_details"
  end
end
