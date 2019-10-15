class MessageMailer < ApplicationMailer

  def contact_me(message)
    @body = message.message

    mail to: "maxckel@gmail.com", from: message.email
  end
end
