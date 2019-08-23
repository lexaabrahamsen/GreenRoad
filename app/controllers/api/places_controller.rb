class Api::PlacesController < ApplicationController
	def index
		@places = Place.all
		render "index.json.jb"
	end

	def show
		the_id = params[:id]
		@place = Place.find_by(id: the_id)
		render "show.json.jb"
	end
end
