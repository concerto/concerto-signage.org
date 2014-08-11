class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    user = User.from_omniauth(request.env["omniauth.auth"])
    if !user
      flash.notice = "Failed to Sign In, You Are Not an Authorized User!"
      redirect_to :controller => :pages, :action => :show, :id => :frontpage
    else
      flash.notice = "Signed in Through Google!"
      sign_in_and_redirect user
    end
  end

end
