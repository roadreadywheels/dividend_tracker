class AddHasManyRelationshipToStocksTable < ActiveRecord::Migration[5.1]
  
  def change
    add_column 'stocks', 'account_id', :integer
    add_index('stocks', 'account_id')
  end

end
