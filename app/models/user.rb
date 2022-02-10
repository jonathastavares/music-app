class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :authentication_keys => [:username]
  validates :username, presence: true, uniqueness: true
  validates :email, :uniqueness => {:allow_blank => true}
  
  def email_required?
    false
  end
  
  def email_unique?
    false
  end
end
