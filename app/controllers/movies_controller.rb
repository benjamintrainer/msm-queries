class MoviesController < ApplicationController
  def main
    render({ :template => "misc_templates/movies/movies_main"})
  end


  def show
    the_id = params.fetch("the_id")

    matching_records = Movie.where({ :id => the_id })

    @the_movie = matching_records.at(0)

    render({ :template => "misc_templates/movies/movie_details"})
  end
end
