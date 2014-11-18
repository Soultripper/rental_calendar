class CreateClientCalendars < ActiveRecord::Migration
  def change
    create_table :client_calendars do |t|
      t.integer :client_id
      t.integer :unique_date
      t.integer :booking_id

      t.timestamps
    end
  end
end
