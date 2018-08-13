class HomeController < ApplicationController
  def index
  end

  def check
    @date = params[:date]
    if @date == "940814"
      redirect_to '/home/birthday'
    end
  end

  def birthday
    @all_record = Comment.all
  end

  def create
    @a = Comment.new
    @a.name = params[:name]
    @a.content = params[:content]
    @a.save
    redirect_to '/home/birthday'
  end

  def update
  end

  def delete
  end

  def gallery
  end
end
