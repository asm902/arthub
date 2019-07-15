class AddArtistToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :artist, :string
  end
end
