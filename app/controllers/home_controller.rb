class HomeController < ApplicationController
  def index
    if current_user
      redirect_to ideas_url
    end  
  end

end
