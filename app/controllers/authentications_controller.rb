class AuthenticationsController < ApplicationController

  # Create an Authentications model which belongs to User
  # Add provider:string and uid:string to both User and Authentications.
  # Ensure that associations and attr_accessible are correctly mapped in the Models
  # Add the Omniauth.rb initializer
  # Add /user/auth/:provider/callback to the routes
  # /user/auth/:provider is handled by the Oauth gem

  # Callback function of omniauth redirects back to this function.
  # This creates a user if none exists or signs in a user if he exists

  def create
    require 'find'
    require 'fileutils'
    require 'pathname'
    auth=request.env["omniauth.auth"]
    if auth.provider=='facebook' # Checking if request comes from facebook or twitter
                                 #if User.find_by_email(auth.info.email).nil?
      if User.find_by_uid(auth['uid']).nil?
        users_email = auth.extra.raw_info.email
        if users_email.nil?
          @user = User.create(:provider => auth["provider"], :uid => auth["uid"], :name => auth["info"]["name"])
        else
          @user = User.create(:provider => auth["provider"], :email => users_email, :password => Devise.friendly_token[0, 20], :uid => auth["uid"], :name => auth["info"]["name"])
        end
      else
        @user=User.find_by_uid(auth['uid'])
      end
    else
      render :text => "Please login using your facebook Account"
    end
    sign_in(:user, @user)
    redirect_to "/"
  end

end
