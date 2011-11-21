class PostsController < ApplicationController

  layout 'forum'
  load_and_authorize_resource

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = @current_user.id
    if @post.save

    else

    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
