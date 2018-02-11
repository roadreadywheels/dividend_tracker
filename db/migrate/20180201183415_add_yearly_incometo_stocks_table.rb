class AddYearlyIncometoStocksTable < ActiveRecord::Migration[5.1]
  def up
    add_column "stocks", "declared_amount", :float, default: 0.0
  end

  def down
    remove_column "stocks", "declared_amount"    
    remove_column "stocks", "yearly_income"
  end
end
