class AddNewsIndexToStocksTable < ActiveRecord::Migration[5.1]
  def change
    add_column 'news', 'stock_id', :integer
    add_index('news', 'stock_id')
  end

end
