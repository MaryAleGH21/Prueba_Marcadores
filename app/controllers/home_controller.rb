class HomeController < ApplicationController
  def index
      @bookmarks = Bookmark.joins(:kind).group('kinds.name').count
  end
end
