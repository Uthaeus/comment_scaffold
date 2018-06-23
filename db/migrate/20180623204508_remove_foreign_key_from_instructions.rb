class RemoveForeignKeyFromInstructions < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :instructions, :recipes
  end
end
