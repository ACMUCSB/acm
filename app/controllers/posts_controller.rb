class PostsController < ApplicationController

  layout 'forum'
  load_and_authorize_resource


  # METHOD ORGANIZATION:
  #  - create
  #  - read
  #  - update
  #  - delete


  #---------- CREATE
  def new
    # Display a form to create a new post
    # The actual post creation is handled by method: create
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = @current_user.id

    # TODO add flash messages
    if @post.save
      redirect_to posts_path
    else
      # Save fails - render the form again
      render :new
    end
  end


  #---------- READ
  def index
    # The index of the forum; a display of all posts
    @posts = Post.all
  end

  def show
    # Show a single post
    @post = Post.find(params[:id])
  end


  #---------- UPDATE
  def edit
    # Display a form to edit an existing post
    # The actual post updating is handled by method: update
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes
      redirect_to posts_path # Temporary while flash is not standardized
      #redirect_to(posts_path, :flash => {:type => "action", :msg => "Post updated successfully"})
    else
      # Update fails - redisplay the form
      render :edit
    end
  end


  #---------- DELETE
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path # Temporary while flash is not standardized
    #redirect_to(posts_path, :flash => {:type => "action", :msg => "Post deleted succesfully."})
  end

end
