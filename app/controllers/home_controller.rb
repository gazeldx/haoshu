class HomeController < ApplicationController
  def index
    @books = Book.includes(:authors).page(params[:page]).order('created_at DESC')
  end
end