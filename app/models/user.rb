# encoding: UTF-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:user_name]
         
         
  belongs_to :role
  before_save :set_role
  has_many :amount_remains
  def email_required?
    false
  end
         
  def is_admin?
    self.role_id == 1
  end  
  
  def is_colleague?
    self.role.try(:name) == "colleague"
  end         
  def set_role 
    self.role_id = 2 if self.role_id.blank?
  end
end

