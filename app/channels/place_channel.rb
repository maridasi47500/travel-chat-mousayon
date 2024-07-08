class PlaceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "place_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

