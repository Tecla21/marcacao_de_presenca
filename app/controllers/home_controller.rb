class HomeController < ApplicationController
  def dashboard
    unless utilizador_signed_in?
      redirect_to root_url and return
    end
  end

  def site
    if utilizador_signed_in?
      redirect_to home_dashboard_path and return
    end
  end
end
