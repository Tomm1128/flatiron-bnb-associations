class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.integer :guest_id, null: false
      t.references :reservation

      t.timestamps
    end

    add_foreign_key :reviews, :users, column: :guest_id
    add_index :reviews, :guest_id
  end
end
