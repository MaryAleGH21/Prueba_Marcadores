class HomeController < ApplicationController
  def index
      @bookmarks = Bookmark.group(:kind).count
  end
end
