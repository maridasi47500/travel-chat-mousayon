class NewPlaceTaskJob < ApplicationJob
  #queue_as :default
  
    def perform(arg1)
      ActionCable.server.broadcast("placetask_#{"azertyui"}", { sent_by: "#{arg1.user.username} (#{arg1.user.country.unicode})",body: "#{arg1.place.name} <img class=\"smallpic\" src=\"/uploads/#{arg1.place.photo}\"/>", text: "#{arg1.name}" })
    end

end
