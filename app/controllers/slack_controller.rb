class SlackController < ApplicationController
  def create
    return unless spam?
    title = "*#{params["Name"]}*\n"
    from = "From: #{params["From"]}\n"
    to = "To: #{params["Email"]}\n"
    description = "#{params["Description"]}"
    message = title + from + to + description
    SlackNotifier::CLIENT.ping message
  end

  private 

  def spam?
    params["Type"] == "SpamNotification"
  end
end
