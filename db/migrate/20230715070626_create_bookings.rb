class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status
      t.references :users
      t.references :lambos
      t.timestamps
    end
  end
end
