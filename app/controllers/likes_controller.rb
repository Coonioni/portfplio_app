class LikesController < ApplicationController
  def create
    post = Post.find(param[:post_id])
    authorize Like.new(user_id: current_user.id)
    current_user.like(post)
    redirect_back(fallback_location: root_url)
  end

  def destroy
    like = authorize Like.find(params[:id])
    like.destroy
    redirect_back(fallback_location: root_url)
  end
end
