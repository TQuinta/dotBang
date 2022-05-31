class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :GitHub_url
      t.string :LinkedIn_url
      t.string :Twitter_url
      t.string :website_url
      t.string :description
      t.string :credentials
      t.float :years_of_experience
      t.string :city
      t.string :current_role
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
