class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :apt
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
