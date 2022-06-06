class MigrateContenttoRichContentArticles < ActiveRecord::Migration[6.1]
  def change
    def up
      Post.find_each do |post|
        post.update(rich_content: post.content)
      end
    end

    def down
      Post.find_each do |post|
        post.update(content: post.rich_content)
        post.update(rich_content: nil)
      end
    end
  end
end
