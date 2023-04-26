class MoviesController < ApplicationController
  def list_of_movies

    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb"})
  end


def movie_details
  #@movie_name = 
  #Parameters: {"an_id"=>"1"}
  #<%=@movie_name%>
  @movie_num = params.fetch("movie_id")
  @movie_name = 

  render({ :template => "movie_templates/movie_bio.html.erb" })
end


end
