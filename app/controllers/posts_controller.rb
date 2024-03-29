class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy view_count ]

  def index
    @posts = Post.all
  end

  def show
    @post.increment!(:views)
  end

  def new
    @post = Post.new
  end

  def edit; end

  def view_count
    render partial: 'posts/view_count', locals: { post: @post }
  end

  def create
    @post = Post.new(post_params)
    @post.save ? (redirect_to post_url(@post)) : (render :new)
  end

  def update
    @post.update(post_params) ? (redirect_to post_url(@post)) : (render :edit)
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :views)
  end
end
