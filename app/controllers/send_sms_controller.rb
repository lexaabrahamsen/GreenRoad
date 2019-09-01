class SendSmsController < ApplicationController
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
# DANGER! This is insecure. See http://twil.io/secure
account_sid = 'ACea900c4ec6fed927d0379d6839d951d5'
auth_token = 'af58d8d28aa8f51f51739e44ff9f9b70'
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages
  .create(
     body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
     from: '+19292051561',
     to: '+13477120319'
   )

puts message.sid
end
