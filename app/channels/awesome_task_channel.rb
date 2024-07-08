class AwesomeTaskChannel < ApplicationCable::Channel
  def subscribed
    stream_from "awesometask_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
