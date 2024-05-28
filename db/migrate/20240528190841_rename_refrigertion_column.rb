class RenameRefrigertionColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column(:kitchens, :has_refridgeration, :has_refrigeration)
  end
end
