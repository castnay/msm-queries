Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "list_of_directors" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "green" })
  get("/movies", { :controller => "movies", :action => "list_of_movies" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })
  
end
