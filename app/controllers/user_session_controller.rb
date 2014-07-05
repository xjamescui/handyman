class UserSessionController < ApplicationController
  def login
    session[:login] = true
    redirect_to rentables_path
  end

  def logout
    session[:login] = nil
    redirect_to root_path
  end
end
