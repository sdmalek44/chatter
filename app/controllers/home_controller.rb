class HomeController < ApplicationController
  def index
    @messages = Message.last(5)
    @message = Message.new
  end
end
