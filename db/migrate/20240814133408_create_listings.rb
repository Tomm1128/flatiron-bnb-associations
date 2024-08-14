class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.string :description
      t.decimal :price
      t.references :neighborhood
      t.integer :host_id, null: false

      t.timestamps
    end

    add_foreign_key :listings, :users, column: :host_id
    add_index :listings, :host_id
  end
end
