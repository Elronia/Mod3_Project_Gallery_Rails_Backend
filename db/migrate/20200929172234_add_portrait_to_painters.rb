class AddPortraitToPainters < ActiveRecord::Migration[6.0]
  def change
    add_column :painters, :portrait, :string
  end
end
