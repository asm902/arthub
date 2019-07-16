class ChangeYeartoString < ActiveRecord::Migration[5.2]
  def change
    change_column :paintings, :year, :string
  end
end
