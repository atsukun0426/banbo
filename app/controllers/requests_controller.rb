class RequestsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
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

  private

  def request_params
    params.require(:request).permit(:name, :email, :group_name, :content)
  end
end
