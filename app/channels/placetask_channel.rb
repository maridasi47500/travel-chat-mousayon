class PlacetaskChannel < ApplicationCable::Channel
  def subscribed
      stream_from "placetask_#{params[:room]}"
  end


  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
