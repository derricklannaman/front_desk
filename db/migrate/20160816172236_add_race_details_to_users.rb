class AddRaceDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :race, :string
  end
end
