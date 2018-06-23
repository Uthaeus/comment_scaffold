class AddReferenceToInstructions < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :ingredients, :recipes
  end
end
