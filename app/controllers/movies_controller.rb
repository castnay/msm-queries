class MoviesController < ApplicationController
  def list_of_movies

    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb"})
  end
end
