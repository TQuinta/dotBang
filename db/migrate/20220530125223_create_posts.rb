class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :blurb
      t.string :content
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :postable, polymorphic: true

      t.timestamps
    end
  end
end
