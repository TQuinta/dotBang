class AddDefaultToRatingPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :rating, :integer, default: 0
  end
end
