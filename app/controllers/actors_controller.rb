class ActorsController < ApplicationController
  def main
    render({ :template => "misc_templates/actors/actors_main"})
  end

  def show
    the_id = params.fetch("the_id")

    matching_records = Actor.where({ :id => the_id })

    @the_actor = matching_records.at(0)

    render({ :template => "misc_templates/actors/actors_details"})
  end
end
