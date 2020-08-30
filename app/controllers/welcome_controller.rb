class WelcomeController < ApplicationController
  def index
    if current_user
      #@account = User.find(current_user.id).driver.account
    else
    end
  end
end
