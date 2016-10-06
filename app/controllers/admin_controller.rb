class AdminController < ApplicationController
  def index
    if current_administrator
      render 'dashboard'
    else
      render 'index'
    end
  end
end
