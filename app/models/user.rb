class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  def active_for_authentication? 
    super && staff? 
  end 

  def inactive_message 
    if !staff? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end
end
