class AddNameToKitchens < ActiveRecord::Migration[7.1]
  def change
    add_column :kitchens, :name, :string
  end
end
