class RemoveNameFromRoles < ActiveRecord::Migration[6.1]
  def change
    remove_column :roles, :name, :string
  end
end
