class ActorsController < ApplicationController

  def list_of_actors
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb" })
  end

  def actor_details 

    actor_num = params.fetch("an_id")
    @actor_id = Actor.where({ :id => actor_num }).at(0)
    @a_film = Movie.where({ :id => @actor_id.id}).at(0)

    render({ :template => "actor_templates/actor_bio.html.erb" })
  end

end
