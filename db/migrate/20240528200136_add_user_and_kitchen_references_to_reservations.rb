class AddUserAndKitchenReferencesToReservations < ActiveRecord::Migration[7.1]
  def change
    add_reference :reservations, :user, null: false, foreign_key: true
    add_reference :reservations, :kitchen, null: false, foreign_key: true
  end
end
