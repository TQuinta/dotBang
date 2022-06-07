class VotesController < ApplicationController
  before_action :set_post
  before_action :set_vote

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

  def handle_vote
    # binding.pry
    if author?
      flash[:alert] = 'Cannot vote on your own post!'
    elsif @vote
      remove_votes
    else
      add_votes
    end
  end

  def remove_votes
    @vote.destroy
    @vote = nil
  end

  def add_votes
    @vote = Vote.create(user: current_user, post: @post)
  end

  def author?
    current_user == @post.user
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def set_vote
    @vote = @post.votes.find_by(user: current_user)
  end
end
