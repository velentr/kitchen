class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :body
      t.text :ingredients

      t.timestamps
    end
  end
end
