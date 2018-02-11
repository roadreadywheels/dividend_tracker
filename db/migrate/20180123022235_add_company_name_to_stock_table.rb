class AddCompanyNameToStockTable < ActiveRecord::Migration[5.1]
  def up
    add_column "stocks", "company_name", :string
  end

  def down
    remove_column "admin_users", "company_name"
  end
end
