class AddLocationToPaintings < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :location, :string
  end
end
