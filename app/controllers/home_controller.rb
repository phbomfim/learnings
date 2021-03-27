class HomeController < ApplicationController
  def index
    @announcements = Announcement.order(published_at: :desc)
  end

  def terms
  end

  def privacy
  end
end
