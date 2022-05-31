class RemoveNameFromSkills < ActiveRecord::Migration[6.1]
  def change
    remove_column :skills, :name, :string
  end
end
