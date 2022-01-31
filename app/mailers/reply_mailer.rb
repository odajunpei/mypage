class ReplyMailer < ApplicationMailer

  default from: "junpeioda.creat@gmail.com"

  def reply_inquiry(inquiry)
    @inquiry = inquiry
    mail(:to => inquiry.email, subject: 'お問い合わせ事項に回答します。')
  end
end
