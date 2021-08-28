class TodayController < ApplicationController
  def index
    @tasks = Task.all
    @bringings = Bringing.all
  end
end
