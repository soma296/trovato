class Sub9jectsController < ApplicationController
    def index
        @sub9jects = Sub9ject.all
    end
    
    def edit
        @sub9ject = Sub9ject.find(params[:id])
        if @sub9ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title9 = params[:sub9ject][:title9]
        teacher9 = params[:sub9ject][:teacher9]
        @sub9ject = Sub9ject.find(params[:id])
        if @sub9ject.update(title9: title9, teacher9: teacher9)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub9ject = Sub9ject.find(params[:id])
        @sub9ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub9ject = Sub9ject.new
    end
    def create
        title9 = params[:sub9ject][:title9]
        teacher9 = params[:sub9ject][:teacher9]
        @sub9ject = Sub9ject.new(title9: title9, teacher9: teacher9)
        @sub9ject.user_id = current_user.id
        if @sub9ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
