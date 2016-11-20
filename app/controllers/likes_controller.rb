class LikesController < ApplicationController
  def index
    @likes = Like.all

    render("likes/index.html.erb")
  end

  def show
    @like = Like.find(params[:id])

    render("likes/show.html.erb")
  end

  def new
    @like = Like.new

    render("likes/new.html.erb")
  end

  def create
    @like = Like.new

    @like.photo_id = params[:photo_id]
    @like.user_id = params[:user_id]

    save_status = @like.save

    redirect_to :back
  end

  def edit
    @like = Like.find(params[:id])

    render("likes/edit.html.erb")
  end

  def update
    @like = Like.find(params[:id])

    @like.photo_id = params[:photo_id]
    @like.user_id = params[:user_id]

    save_status = @like.save

    redirect_to :back
  end

  def destroy
    @like = Like.find(params[:id])

    @like.destroy

    redirect_to :back
  end
end
