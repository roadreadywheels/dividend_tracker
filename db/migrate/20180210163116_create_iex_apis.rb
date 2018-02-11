class CreateIexApis < ActiveRecord::Migration[5.1]
  def change
    create_table :iex_apis do |t|
      t.string :stock_update

      t.timestamps
    end
  end
end
