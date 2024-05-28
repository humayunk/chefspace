class AddAssociationsKitchen < ActiveRecord::Migration[7.1]
  def change
    has_many :reservations
    has_many :kitchens
  end
end
