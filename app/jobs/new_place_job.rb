class NewPlaceJob < ApplicationJob
  #queue_as :default

  def perform(arg1)
    ActionCable.server.broadcast("place_#{"azertyui"}", { sent_by: "nobody",body: "This Room is Best Room." })
  end
end
