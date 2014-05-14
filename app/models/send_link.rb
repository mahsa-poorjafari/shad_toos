# encoding: UTF-8
class SendLink < ActiveRecord::Base
  validates :sender_email, :receiver_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'ایمیل نامعتبر است.' } 
end
