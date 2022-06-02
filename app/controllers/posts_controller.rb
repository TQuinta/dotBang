class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_skill, only: :create, if: :skill? #before the 'create' method, call to 'set_skill' only if there is a skill
  before_action :set_role, only: :create, if: :role?

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.postable = @postable
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  private

  def role?
    params[:tag][:postableSkills].empty?
  end

  def skill?
    params[:tag][:postableRoles].empty?
  end

  def set_skill
    @postable = Skill.find(params[:tag][:postableSkills])
  end

  def set_role
    @postable = Role.find(params[:tag][:postableRoles])
  end

  def post_params
    params.require(:post).permit(:title, :blurb, :content)
  end
end
