class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_skill, only: :create, if: :skill? #before the 'create' method, call to 'set_skill' only if there is a skill
  before_action :set_role, only: :create, if: :role?
  before_action :set_params, only: %i[upvote show]
  before_action :set_vote, only: %i[show upvote]
  skip_before_action :authenticate_user!, only: [ :show ]

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

  def index
    if params[:type]
      @posts = Post.where(postable_type: params[:type], postable_id: params[:postable_id])
    else
      @posts = [] #once we validate search works this 'else' should not show anything
    end
  end

  def upvote
    handle_vote
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.json do
        render json: {
          votes: helpers.pluralize(@post.votes.count, "vote"),
          button_html: render_to_string(partial: "posts/upvote", locals: { post: @post }, formats: [:html])
        }
      end
    end
  end

  private

  def set_vote
    @vote = @post.votes.find_by(user: current_user)
  end

  def handle_vote
    if author?
      flash[:alert] = 'Cannot vote on your own post!'
    elsif @vote
      remove_votes
    else
      add_votes
    end
  end

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

  def remove_votes
    @vote.destroy
    @vote = nil
  end

  def add_votes
    @vote = Vote.create(user: current_user, post: @post)
  end
end
