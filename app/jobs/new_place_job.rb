class NewPlaceJob < ApplicationJob
  #queue_as :default

  def perform(arg1)
    ActionCable.server.broadcast("place_#{"azertyui"}", { sent_by: "#{arg1.user.username} (#{arg1.user.country.unicode})",body: "#{arg1.name} <img class=\"smallpic\" src=\"/uploads/#{arg1.photo}\"/>" })
  end
end
