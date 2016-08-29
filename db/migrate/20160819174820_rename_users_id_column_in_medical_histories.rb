class RenameUsersIdColumnInMedicalHistories < ActiveRecord::Migration[5.0]
  def change
    rename_column :medical_histories, :users_id, :user_id
  end
end
