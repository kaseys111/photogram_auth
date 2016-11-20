class UsersController < ApplicationController
  def index
    @users = User.all

    render("/users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos.order(created_at: :desc)
    render("/users/show.html.erb")
  end

end
