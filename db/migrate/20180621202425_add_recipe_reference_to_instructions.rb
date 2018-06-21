class AddRecipeReferenceToInstructions < ActiveRecord::Migration[5.1]
  def change
    add_reference :instructions, :recipes, foreign_key: true
  end
end
