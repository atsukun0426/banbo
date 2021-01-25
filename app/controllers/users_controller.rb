class UsersController < ApplicationController
  # before_action :sign_in_required, only: [:show]
  def index
  end

  def show
    @user = User.find(params[:id])
    likes = Like.where(user_id: current_user.id).order(created_at: :desc).pluck(:recruitment_id)
    @likes = Recruitment.find(likes)
  end
end
