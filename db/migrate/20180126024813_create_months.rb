class CreateMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :months do |t|
      t.float 'January'
      t.float 'February'
      t.float 'March'
      t.float 'April'
      t.float 'May'
      t.float 'June'
      t.float 'July'
      t.float 'August'
      t.float 'September'
      t.float 'October'
      t.float 'November'
      t.float 'December'
      t.timestamps
    end
  end
end
