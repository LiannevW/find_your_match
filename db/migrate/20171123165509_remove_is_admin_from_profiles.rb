class RemoveIsAdminFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :is_admin, :boolean
  end
end
