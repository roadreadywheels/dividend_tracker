class CreateAccounts < ActiveRecord::Migration[5.1]
  
  def change
    create_table :accounts do |t|
      t.string :account_name
      t.float :account_value
      t.float :january_income, :default => 0.0
      t.float :february_income, :default => 0.0
      t.float :march_income, :default => 0.0
      t.float :april_income, :default => 0.0
      t.float :may_income, :default => 0.0
      t.float :june_income, :default => 0.0
      t.float :july_income, :default => 0.0
      t.float :august_income, :default => 0.0
      t.float :septermber_income, :default => 0.0
      t.float :october_income, :default => 0.0
      t.float :novemeber_income, :default => 0.0
      t.float :december_income, :default => 0.0
      t.timestamps
    end
  end
  
end
