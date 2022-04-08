# frozen_string_literal: true

class HomeController < ApplicationController
  # GET /
  def index
    if user_signed_in?
      @posts = Post.where(user: current_user).order(created_at: :desc)
      render "posts/index"
    else
      render :index
    end
  end
end
