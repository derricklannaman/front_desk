class AddSocialSecurityDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :social_security_number1, :string, limit: 3
    add_column :users, :social_security_number2, :string, limit: 2
    add_column :users, :social_security_number3, :string, limit: 4
    add_column :users, :preferred_language, :string
    add_column :users, :relationship_status, :string
    add_column :users, :employer, :string
  end
end
