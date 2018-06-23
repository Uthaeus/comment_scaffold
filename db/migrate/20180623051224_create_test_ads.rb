class CreateTestAds < ActiveRecord::Migration[5.1]
  def change
    create_table :test_ads do |t|
      t.string :title
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
