class AddFieldToStocksTable < ActiveRecord::Migration[5.1]
  
  def up
    add_column "stocks", "account", :string
  end

  def down
    remove_column "stocks", "account"
  end

end
