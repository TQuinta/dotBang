class PostsController < ApplicationController
  before_action :set_skill, only: :create, if: :skill?
  before_action :set_role, only: :create, if: :role?
  before_action :set_params, only: %i[upvote show]

  def show; end

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

  def upvote
    @votes = @post.votes
    @vote = @votes.find { |vote| vote.user == current_user }
    if author?
      "not possible"
    elsif @vote
      add_votes
    else
      remove_votes
    end
    redirect_to post_path(@post)
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

  def author?
    current_user == @post.user
  end

  def set_params
    @post = Post.find(params[:id])
  end

  def add_votes
    @post.rating -= 1
    @post.save
    @vote.destroy
  end

  def remove_votes
    @post.rating += 1
    @post.save
    Vote.create(user: current_user, post: @post)
  end
end
