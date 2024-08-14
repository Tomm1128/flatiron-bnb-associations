class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
      t.references :listing
      t.integer :guest_id, null: false

      t.timestamps
    end

    add_foreign_key :reservations, :users, column: :guest_id
    add_index :reservations, :guest_id
  end
end
