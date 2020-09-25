class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.string :image
      t.belongs_to :painter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
