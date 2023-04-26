class DirectorsController < ApplicationController
  
  def list_of_directors
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def wisest 
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)

    render({ :template => "director_templates/eldest.html.erb" })
  end

  def director_details
    
    #Parameters: {"an_id"=>"42"}

    the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => the_id }).at(0)
    @filmography = Movie.where({ :director_id => @the_director.id })

    render({ :template => "director_templates/show.html.erb" })
  end

  def green
    @youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)

    render({ :template => "director_templates/junior.html.erb" })
  end
end
