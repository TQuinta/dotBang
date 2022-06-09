class BookmarksController < ApplicationController
  before_action :store_last_index_page, only: %i[index]

  def index
    @user_bookmarks = Bookmark.where(user: current_user)
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @post = Post.find(params[:post_id])
    @bookmark.post = Post.find(params[:post_id])
    @bookmark.save
    respond_to do |format|
      format.html { redirect_back(fallback_location: post_path(@bookmark.post)) }
      format.json do
        render json: {
          button_html: render_to_string(partial: "posts/bookmark", locals: { post: @post, bookmark: @bookmark }, formats: [:html])
        }
      end
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @post = @bookmark.post
    @bookmark.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: post_path(@bookmark.post))}
      format.json do
        render json: {
          button_html: render_to_string(partial: "posts/bookmark", locals: { post: @post, bookmark: nil }, formats: [:html])
        }
      end
    end
    @bookmark = nil
  end
end
