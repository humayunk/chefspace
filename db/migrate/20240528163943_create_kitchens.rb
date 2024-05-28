class CreateKitchens < ActiveRecord::Migration[7.1]
  def change
    create_table :kitchens do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :daily_rate
      t.string :kitchen_type
      t.text :description
      t.boolean :has_parking
      t.boolean :has_fire_safety
      t.boolean :has_refridgeration
      t.string :storage_type
      t.boolean :has_oven
      t.boolean :has_stove
      t.boolean :has_fryer
      t.boolean :has_dishwasher
      t.boolean :has_cookware
      t.boolean :has_cutlery
      t.boolean :availability
      t.integer :prep_tables

      t.timestamps
    end
  end
end
