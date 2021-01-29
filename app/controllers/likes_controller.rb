class LikesController < ApplicationController
  def create
    @recruitment = Recruitment.find(params[:recruitment_id])
    like = current_user.likes.build(recruitment_id: params[:recruitment_id])
    like.save
  end

  def destroy
    @recruitment = Recruitment.find(params[:recruitment_id])
    like = Like.find_by(recruitment_id: params[:recruitment_id], user_id: current_user.id)
    like.destroy
  end

  def users_likes
    likes = Like.where(user_id: current_user.id).pluck(:recruitment_id)
    @users_likes = Recruitment.find(likes)
  end
end
