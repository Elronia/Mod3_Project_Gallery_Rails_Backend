class CreatePainters < ActiveRecord::Migration[6.0]
  def change
    create_table :painters do |t|
      t.string :name
      t.string :years
      t.string :genre
      t.string :nationality
      t.text :bio
      t.integer :painting_num

      t.timestamps
    end
  end
end
