class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @post = Post.find(params[:post_id])
    @comment.post = @post
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@comment.post, anchor: "comment-#{@comment.id}") }
        format.json {
          render json: {
            comment_html: render_to_string(partial: "posts/comment.html.erb", locals: { comment: @comment }),
            form_html: render_to_string(partial: "posts/create_comment.html.erb", locals: { post: @post, comment: Comment.new })
          }
         }
      else
        format.html { render post_path(@comment.post) }
        # format.json {  }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
