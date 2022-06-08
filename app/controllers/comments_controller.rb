class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = Post.find(params[:post_id])
    if @comment.save
      redirect_to post_path(@comment.post, anchor: "comment-#{@comment.id}")
    else
      render post_path(@comment.post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
