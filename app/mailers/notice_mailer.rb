class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.greeting.subject
  #
  def greeting(event)
    @message = "#{event.name}さん、申し込みありがとうございます。"
    @url = "http://www.example.com"
    
    # 宛先
    mail to: event.email,
      # CC宛先
      cc: "event_host@example.com",
      # タイトル
      subject: "地元の食材フェスティバル"
  end
  
end
