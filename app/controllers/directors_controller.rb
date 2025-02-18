class DirectorsController < ApplicationController
  def main
    render({ :template => "misc_templates/directors/directors_main"})
  end

  def show
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "misc_templates/directors/details"})
  end
  
  def youngest
    @youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first
    render({ :template => "misc_templates/directors/directors_youngest"})
  end

  def eldest
    @eldest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
    render({ :template => "misc_templates/directors/directors_eldest"})
  end 
end
