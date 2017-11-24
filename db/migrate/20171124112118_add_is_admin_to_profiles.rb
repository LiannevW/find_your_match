class AddIsAdminToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :is_admin, :boolean
  end
end
