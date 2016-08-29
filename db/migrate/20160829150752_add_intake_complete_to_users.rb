class AddIntakeCompleteToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :intake_complete, :boolean, default: false
  end
end
