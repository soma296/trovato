class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @bringings = Bringing.all
  end
end
