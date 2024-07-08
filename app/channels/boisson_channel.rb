class BoissonChannel < ApplicationCable::Channel
  def subscribed
    stream_from "boisson_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
