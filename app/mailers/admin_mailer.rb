class AdminMailer < ActionMailer::Base
  
  def send_user_mail
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "rainbow web site", :from => "web-development@raush.com")
  end

  
end
