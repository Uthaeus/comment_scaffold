class RemoveReferenceFromInstructions < ActiveRecord::Migration[5.1]
  def change
    remove_reference :instructions, :recipes, foreign_key: true
    add_reference :instructions, :recipe, foreign_key: true
  end
end
