class MyLikesController < ApplicationController
  def index
    @liked_photos = current_user.liked_photos
    render("/my_likes/index.html.erb")
  end
end
