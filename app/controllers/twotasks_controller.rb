class TwotasksController < ApplicationController
  def index
    @tasks = Task.all
    @q = Task.ransack(params[:q])
    @tasks = @q.result(distinct: true)
    if params[:button2]
    redirect_to controller: :tasks, action: :index
    end
  end
end

