class Api::PlacesController < ApplicationController
	# def index
	# 	@places = Place.all
	# 	render "index.json.jb"
	# end
  def index
    if params[:search]
      @places = Place.where("distance LIKE ?", "%#{params[:search]}%")
    else
      @places = Place.all
    end

    @places = @places.order(:id => :asc)
    render "index.json.jb"
  end

	def show
		the_id = params[:id]
		@place = Place.find_by(id: the_id)
		render "show.json.jb"
	end
end
