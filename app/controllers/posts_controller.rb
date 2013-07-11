class PostsController < ApplicationController
  def index
  	@posts = Post.paginate(page: params[:page], per_page: 5)
    

  end

  def show
  	@post = Post.find(params[:id])
    authorize! :read, Post, message: "You need to be a member to view an assignment."
    
  end

  def new
  	@post = Post.new
    authorize! :create, Post, message: "You need to be a member to create a new assignment."
  end

  def edit
  	@post = Post.find(params[:id])
    authorize! :edit, @post, message: "You need to own the assignment to be able to edit it."
  end

  def create
    @post = current_user.posts.build(params[:post])
    authorize! :create, @post, message: "You need to be signed up to do that."  	
  	if @post.save
  		flash[:notice] = "Article was saved."
  		redirect_to @post
  	else 
  		flash[:error] = "There was an error saving the assignment. Please try again."
  		render :new
  	end
  end

  def update
    @post = Post.find(params[:id])
    authorize! :update, @post, message: "You need to own the post to edit it."

    if @post.update_attributes(params[:post])
      flash[:notice] = "Article was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the article. Please try again."
      render :new
    end
  end

  def write
  end
end
