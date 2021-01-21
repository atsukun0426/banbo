class RecruitmentsController < ApplicationController
  def index
    @recruitments = Recruitment.page(params[:page]).per(20)
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = current_organizer.recruitments.build(recruitment_params)
    if @recruitment.save
      flash[:success] = "投稿が完了しました!"
      redirect_to organizer_path(id: current_organizer.id)
    else
      render 'recruitments/new'
    end
  end

  def destroy
    recruitment = Recruitment.find(params[:id])
    recruitment.destroy if recruitment.organizer_id == current_organizer.id
  end

  def show
    @recruitment = Recruitment.find(params[:id])
  end

  private

  def recruitment_params
    params.require(:recruitment).permit(:title, :prefecture_id, :date, :price, :content)
  end
end
