class AddCurrencyToCalendarBooking < ActiveRecord::Migration
  def change
    add_column :calendar_bookings, :currency, :string
  end
end
