class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def edit
    @subject = Subject.find(params[:id])
    if @subject.user != current_user
        redirect_to subjects_path, danger: "不正なアクセスです。"
    end
  end
  def update
    title = params[:subject][:title]
    teacher = params[:subject][:teacher]
    @subject = Subject.find(params[:id])
    if @subject.update(title: title, teacher: teacher)
      redirect_to "/", success: "課題を更新しました。"
    else
      render :edit
    end
  end
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to root_path, danger: "課題を削除しました。"
  end

  def new
    @subject = Subject.new
  end
  def create
    title = params[:subject][:title]
    teacher = params[:subject][:teacher]
    @subject = Subject.new(title: title, teacher: teacher)
    @subject.user_id = current_user.id
    if @subject.save
      redirect_to "/", success: "時間割を登録しました。"
    else
      render :new
    end
  end
  def show
    @subject = Subject.find(params[:id])
  end
end
