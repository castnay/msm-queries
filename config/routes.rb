Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "list_of_directors" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest"})
end
