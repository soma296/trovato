class TasksController < ApplicationController
    #セキュリティ、ログインさせる
    before_action :authenticate_user!
  def new
    @task = Task.new
  end
  def create
    deadline = params[:task][:deadline]
    title = params[:task][:title]
    content = params[:task][:content]
    details = params[:task][:details]
    done = params[:task][:done]
    @task = Task.new(deadline: deadline, title: title, content: content, details: details, done: done)
    @task.user_id = current_user.id
    if @task.save
      redirect_to task_path(@task), success: "課題を投稿しました。"
    else
      render :new
    end
  end
  def index
    @tasks = Task.all
    @q = Task.ransack(params[:q])
    @tasks = @q.result(distinct: true)
  end
  def show
    @task = Task.find(params[:id])
  end
  def edit
    @task = Task.find(params[:id])
    if @task.user != current_user
        redirect_to tasks_path, danger: "不正なアクセスです。"
    end
  end
  def update
    deadline = params[:task][:deadline]
    title = params[:task][:title]
    content = params[:task][:content]
    details = params[:task][:details]
    done = params[:task][:done]
    @task = Task.find(params[:id])
    if @task.update(deadline: deadline, title: title, content: content, details: details, done: done)
      redirect_to task_path(@task), success: "課題を更新しました。"
    else
      render :edit
    end
  end
  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to "/tasks", danger: "課題を削除しました。"
  end
end
