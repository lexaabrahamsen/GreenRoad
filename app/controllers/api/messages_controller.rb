class Api::MessagesController < ApplicationController 

  def create
    p ENV["twilio_account_sid"]
    Twilio.configure do |config|
      config.account_sid = ENV["twilio_account_sid"]
      config.auth_token = ENV["twilio_auth_token"]
    end
    client = Twilio::REST::Client.new
    client.messages.create({
      from: "+19292051561",
      to: "+13477120319",
      body: "Don't forget to take out your recycling on Wednesday!"
    })
  end
end
#   def create
#     @messages = HTTP
#       .headers({
#         "TWILIO_ACCOUNT_SID" => "Account sid=#{ENV["twilio_account_sid"]}",
#         "TWILIO_AUTH_TOKEN" => "Auth token=#{ENV["twilio_auth_token"]}",
#         "TWILIO_PHONE_NUMBER" => "Phone number =#{ENV["twilio_phone_number"]}"
#       })
#       .get("http://localhost:3000/api/v1/employees")
#       .parse
#     render "index.html.erb"
#   end

