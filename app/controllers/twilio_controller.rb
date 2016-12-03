class TwilioController < ApplicationController
 skip_before_action :verify_authenticity_token

 def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say "Popcorn Bisou is time for grooming please tell your irresponsble mother to take you.thanks for calling, here is a soong for you.", voice: "alice"
      r.Sms "Well done building your first Twilio on Rails 5 app!"
      r.Play "http://linode.rabasa.com/cantina.mp3"
    end
    render :xml => response.to_xml
  end

end
