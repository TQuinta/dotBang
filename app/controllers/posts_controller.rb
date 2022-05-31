class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @skills = Skills.all
    @roles = Roles.all

    # Need to add whether this is a role or skill

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :blurb, :content, :postable)
  end
end
