class StaticPagesController < ApplicationController
  before_action :login_required , only: [:admin]
  def home

  end

  def help

  end

  def about

  end
  def admin
    render :layout => 'layouts/admin'
  end

  private
  def login_required
    @current_user ||= User.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]
    if !@current_user
      redirect_to :root
    end
  end
end
