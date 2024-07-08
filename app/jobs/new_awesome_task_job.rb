class NewAwesomeTaskJob < ApplicationJob
  #queue_as :default
  def perform(arg1)
    ActionCable.server.broadcast("awesometask_#{"azertyui"}", { sent_by: "#{arg1.user.username} (#{arg1.user.country.unicode})",body: "#{arg1.mytask.name}" })
  end
end
