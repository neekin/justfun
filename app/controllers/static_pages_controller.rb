class StaticPagesController < ApplicationController
  def home

  end

  def help

  end

  def about

  end
  def admin
    render :layout => 'layouts/admin'
  end

end
