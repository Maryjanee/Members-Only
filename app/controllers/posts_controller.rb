class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
  end
  

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(params[:user])
    redirect_to action:'index' if @post.save
  end

end
