class BookmarksController < ApplicationController
  def index
    @my_bookmarks = Bookmark.where(user_id: current_user.id)
  end
end
