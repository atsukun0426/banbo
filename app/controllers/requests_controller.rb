class RequestsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @recruitment = Recruitment.find(params[:recruitment_id])
    @request = @recruitment.requests.build(request_params)
    @request.user_id = current_user.id
    if @request.save
      redirect_to user_path(id: current_user.id)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def user_requests
    requests = Request.where(user_id: current_user.id).pluck(:recruitment_id)
    @user_requests = Recruitment.find(requests)
  end

  def request_users
    recruitment = Recruitment.find(request_params[:recruitment_id])
    @request_users = recruitment.requests
  end

  def request_user
    @requests = Request.find(request_params[:recruitment_id])
  end

  private

  def request_params
    params.require(:request).permit(:user_id, :recruitment_id, :name, :email, :group_name, :content)
  end
end
