class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @movies = Movie.order(ranking: :desc).limit(2)
    @books = Book.order(ranking: :desc).limit(2)
    @albums = Album.order(ranking: :desc).limit(2)
  end
end
