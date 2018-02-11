class AddDeclaredAmountToStockTable < ActiveRecord::Migration[5.1]
  
  def up
    add_column "stocks", "yearly_income", :float
  end

  def down
    remove_column "stocks", "yearly_income"
  end

end
