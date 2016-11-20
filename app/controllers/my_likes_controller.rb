class MyLikesController < ApplicationController
  def index
    @liked_photos = current_user.liked_photos.order(created_at: :desc)
    render("/my_likes/index.html.erb")
  end
end
