class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts(current_user)  
  end

def index
  	@users = User.top_rated.paginate(page: params[:page], per_page: 10)
  end
end