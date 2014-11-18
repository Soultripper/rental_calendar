class CreateCalendarBookings < ActiveRecord::Migration
  def change
    create_table :calendar_bookings do |t|
      t.integer :unit_id
      t.integer :guest_id
      t.decimal :total_price

      t.timestamps
    end
  end
end
