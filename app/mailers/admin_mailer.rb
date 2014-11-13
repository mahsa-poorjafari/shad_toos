# encoding: UTF-8
class AdminMailer < ActionMailer::Base
  
  def send_user_mail
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "پیام ارسالی از سایت شادتوس", :from => "testing.raush@gmail.com")
  end

  
end
