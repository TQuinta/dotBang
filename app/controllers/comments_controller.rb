class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = Post.find(params[:post_id])
    @comment.save
    redirect_to post_path(@comment.post)
    # We need to redirect to the bottom of the page and either refresh or do it by AJAX / Stimulus
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
