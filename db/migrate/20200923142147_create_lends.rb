class CreateLends < ActiveRecord::Migration[6.0]
  def change
    create_table :lends do |t|
      t.integer :start_year_id
      t.integer :start_month_id
      t.integer :start_day_id
      t.integer :start_time_id

      t.integer :start_minutes_id

      t.integer :finish_time_id

      t.integer :finish_minutes_id

      t.integer :hourly_pay
      t.integer :user_id,  foreign_key: true
      t.integer :borrow_id,  foreign_key: true
      t.timestamps
    end
  end
end
