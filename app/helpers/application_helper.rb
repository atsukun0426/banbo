module ApplicationHelper
  def full_title(page_title: '')
    if page_title.empty?
      Constants::WEB_TITLE
    else
      "#{page_title} | #{Constants::WEB_TITLE}"
    end
  end
end
