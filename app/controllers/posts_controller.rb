class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(params[:post])
  	if @post.save
  		flash[:notice] = "Article was saved."
  		redirect_to @post
  	else 
  		flash[:error] = "There was an error saving the article. Please try again."
  		render :new
  	end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Article was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the article. Please try again."
      render :new
    end
  end
end
