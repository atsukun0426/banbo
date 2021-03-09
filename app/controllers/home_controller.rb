class HomeController < ApplicationController
  def top
    @recruitments = Recruitment.limit(3).order(created_at: :desc)
  end
end
