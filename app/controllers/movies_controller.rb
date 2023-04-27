class MoviesController < ApplicationController
  def list_of_movies

    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb"})
  end


def movie_details
  
  movie_num = params.fetch("an_id")
  @movie = Movie.where({ :id => movie_num }).at(0)
  
  render({ :template => "movie_templates/movie_bio.html.erb" })
end


end
