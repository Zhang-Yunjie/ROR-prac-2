class WelcomeController < ApplicationController
  def home
    redirect_to welcome_loggedin_path if signed_in?
  end
end
