class Api::PlacesController < ApplicationController
	# def index
	# 	@places = Place.all
	# 	render "index.json.jb"
	# end
  def index
    Twilio.configure do |config|

    end
    client = Twilio::REST::Client.new
    client.messages.create({

      body: 'Hello there! This is a test'
    })
    if params[:search]
      @places = Place.where("distance LIKE ?", "%#{params[:search]}%")
    else
      @places = Place.all
    end

    @places = @places.order(:id => :asc)
    render "index.json.jb"
  end

	def show
		render "show.json.jb"
	end
end
