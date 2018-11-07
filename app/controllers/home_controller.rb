class HomeController < ApplicationController

  def index
    @comments = Comment.all.order('created_at DESC').first(5)
  end

end