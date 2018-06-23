class AddImagesToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :main_image, :text
    add_column :recipes, :thumb_image, :text
  end
end
