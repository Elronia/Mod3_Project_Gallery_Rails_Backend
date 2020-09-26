class AddYearToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :year, :string
  end
end
