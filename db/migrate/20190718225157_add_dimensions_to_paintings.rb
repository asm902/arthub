class AddDimensionsToPaintings < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :height, :integer
    add_column :paintings, :width, :integer
  end
end
