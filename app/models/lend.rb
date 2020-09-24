class Lend < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :start_year 
  belongs_to_active_hash :start_month
  belongs_to_active_hash :start_day
  belongs_to_active_hash :start_time
  belongs_to_active_hash :start_minutes
  belongs_to_active_hash :finish_time
  belongs_to_active_hash :finish_minutes

  belongs_to :user
  has_one    :borrow
  validates :start_year_id, :start_month_id,:start_day_id,:start_time_id,:start_minutes_id,:finish_time,:finish_minutes,numericality: { other_than: 1 } 

  with_options presence: true do
    # validates :hourly_pay

  end
end
