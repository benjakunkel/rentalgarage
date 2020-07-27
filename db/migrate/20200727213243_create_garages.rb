class CreateGarages < ActiveRecord::Migration[6.0]
  def change
    create_table :garages do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :phone_number
      t.boolean :availability
      t.integer :price_per_hour
      t.string :dimensions
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
