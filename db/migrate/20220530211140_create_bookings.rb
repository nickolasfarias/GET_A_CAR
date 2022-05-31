class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :avaibility
      t.date :started_at
      t.date :ended_at

      t.timestamps
    end
  end
end
