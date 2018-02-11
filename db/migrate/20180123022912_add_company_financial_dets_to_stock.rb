class AddCompanyFinancialDetsToStock < ActiveRecord::Migration[5.1]
  def up
    add_column "stocks", "stock_price", :float
    add_column "stocks", "eps", :float
    add_column "stocks", "pe", :float
    add_column "stocks", "market_cap", :float
    add_column "stocks", "enterprise_value", :float
  end

  def down
    remove_column "stocks", "enterprise_value"
    remove_column "stocks", "market_cap"
    remove_column "stocks", "pe"
    remove_column "stocks", "eps"
    remove_column "stocks", "stock_price"
  end
end
