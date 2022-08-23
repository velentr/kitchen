class CreateCooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cooks do |t|
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
