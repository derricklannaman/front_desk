class CreateContactDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_details do |t|
      t.references :users, foreign_key: true
      t.string :primary_phone
      t.string :primary_phone_type
      t.string :secondary_phone
      t.string :secondary_phone_type
      t.string :email
      t.string :contact_method

      t.timestamps
    end
  end
end
