class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_at
      t.datetime :finish_at
      t.references :user, null: false, foreign_key: true
      t.references :garage, null: false, foreign_key: true
      t.integer :price
      t.boolean :reservation_status

      t.timestamps
    end
  end
end
