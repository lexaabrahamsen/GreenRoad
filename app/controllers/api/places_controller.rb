class Api::PlacesController < ApplicationController
	# def index
	# 	@places = Place.all
	# 	render "index.json.jb"
	# end
  # ***THIS WORKS FOR TWILIO***
  def index
    # Twilio.configure do |config|
    # config.account_sid = "ACea900c4ec6fed927d0379d6839d951d5"
    # config.auth_token = "9ef6b306cf16fdaeae10ee16cfb1e7f5"
    # end
    client = Twilio::REST::Client.new
    client.messages.create({

      body: 'Hello there! This is a test'
    })
  # ADDING SECRETS YML
  # ADDIND TWILIO.RB

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
