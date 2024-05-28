class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      # t.references :user, null: false, foreign_key: true
      # t.references :kitchen, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.float :total_price
      t.string :status

      t.timestamps
    end
  end
end
