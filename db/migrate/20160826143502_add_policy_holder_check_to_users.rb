class AddPolicyHolderCheckToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_policy_holder?, :boolean, default: false
    add_column :users, :responsible_party?, :boolean
  end
end
