class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    user = User.from_omniauth(request.env["omniauth.auth"])
    if !user
      flash.notice = "Failed to Sign In, You Are Not an Authorized User!"
      redirect_to :controller => :pages, :action => :show, :id => :frontpage
    elsif user.persisted?
      flash.notice = "Signed in Through Google!"
      redirect_to :controller => :pages, :action => :show, :id => :frontpage
    else
      flash.notice = "Signed in Through Google!"
      session["devise.user_attributes"] = user.attributes
      redirect_to :controller => :pages, :action => :show, :id => :frontpage
    end
  end

end
