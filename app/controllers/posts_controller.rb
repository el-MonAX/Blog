class PostsController < ApplicationController

  before_action :set_post, only: :show

  def index
    @posts = Post.paginate(page: params[:page], per_page: 5)
  end


  def show
    @random_posts = Post.limit(2).order("RANDOM()")
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end
end
