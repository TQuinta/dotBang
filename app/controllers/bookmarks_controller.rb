class BookmarksController < ApplicationController
  def index
    @user_bookmarks = Bookmark.where(user: current_user)
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @bookmark.post = Post.find(params[:post_id])
    redirect_to post_path(@bookmark.post)
    flash[:alert] = 'Please try again!' unless @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_back(fallback_location: post_path(@bookmark.post))
    @bookmark = nil
  end
end
