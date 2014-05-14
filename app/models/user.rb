# encoding: UTF-8
class User < ActiveRecord::Base  
  extend FriendlyId  
  friendly_id :user_name
  validates :email, :user_name, :presence => {:message => 'تمام فیلد ها را پرکنید'}
  validates :user_name, :uniqueness => {:message => 'این نام کاربری وجود دارد'}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'ایمیل نامعتبر است.' } 
  validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  validates_confirmation_of :password,
                              message: 'پسورد را اشتباه وارد کردید'
   
end
