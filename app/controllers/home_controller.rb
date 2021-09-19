class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @bringings = Bringing.all
    @subjects = Subject.all
  end
end
