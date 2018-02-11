class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.integer :shares, :default => 0
      t.float :dividend_yield, :default => 0
      t.date :ex_date
      t.float :income, :default => 0
      t.string :dividend_type
      t.float :january_income, :default => 0
      t.float :february_income, :default => 0
      t.float :march_income, :default => 0
      t.float :april_income, :default => 0
      t.float :may_income, :default => 0
      t.float :june_income, :default => 0
      t.float :july_income, :default => 0
      t.float :august_income, :default => 0
      t.float :septermber_income, :default => 0
      t.float :october_income, :default => 0
      t.float :novemeber_income, :default => 0
      t.float :december_income, :default => 0
      t.string :company_details
      t.float :stock_price, :default => 0
      t.float :eps, :default => 0
      t.float :pe, :default => 0
      t.float :market_cap, :default => 0
      t.float :enterprise_value, :default => 0
      t.string :company_name
      t.belongs_to :account, :index => true
      
      t.timestamps
    end
  end
end
