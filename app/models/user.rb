class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :omniauthable


  # METHODS ---------------------------------------------
  def self.allowed_email(user_email)
    for email in ConcertoSignage::Application.config.authorized_emails
      if user_email == email
        return true
      end
    end
    false
  end

  def  self.from_omniauth(auth)
    if user = User.find_by_email(auth.info.email)
      user
    else
      if self.allowed_email(auth.info.email)
        user = User.new
        user.name = auth.info.name
        user.email = auth.info.email
        user.save
        user
      else
        user
      end
    end
  end

end
