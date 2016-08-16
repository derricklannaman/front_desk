class AddContactDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :primary_phone, :string
    add_column :users, :primary_phone_type, :string
    add_column :users, :secondary_phone, :string
    add_column :users, :secondary_phone_type, :string
    add_column :users, :contact_method, :string
  end
end
