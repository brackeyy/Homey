class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :flat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status, default: "pending"
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
