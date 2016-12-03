class TwilioController < ApplicationController
 skip_before_action :verify_authenticity_token

 def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say "Popcorn tiene un enredooooooo! Peinalo madre yautia!!!!", voice: "alice", language: 'es-ES'
      r.Sms "Well done building your first Twilio on Rails 5 app!"
      r.Play "http://linode.rabasa.com/cantina.mp3"
    end
    render :xml => response.to_xml
  end

end
