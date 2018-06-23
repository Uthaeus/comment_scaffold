class AddForeignKeyToInstructions < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :instructions, :recipes, on_delete: :cascade
    add_foreign_key :ingredients, :recipes, on_delete: :cascade
  end
end
