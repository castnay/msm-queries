class DirectorsController < ApplicationController
  
  def list_of_directors
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def wisest

    render({ :template => "director_templates/eldest.html.erb" })
  end
end
