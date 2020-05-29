class PlayChannel < ApplicationCable::Channel
    def subscribed
      stream_from "play_channel"
    end
  
  
    def unsubscribed

    end
  end