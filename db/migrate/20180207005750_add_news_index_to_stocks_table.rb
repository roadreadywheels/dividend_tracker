class AddNewsIndexToStocksTable < ActiveRecord::Migration[5.1]
  def change
    add_column 'news', 'stock_id', :integer
    add_index('news', 'stock_id')
    add_column "stocks", "yearly_income", :float, default: 0.0
  end

end
