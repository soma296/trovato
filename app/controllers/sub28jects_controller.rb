class Sub28jectsController < ApplicationController
    def index
        @sub28jects = Sub28ject.all
    end
    
    def edit
        @sub28ject = Sub28ject.find(params[:id])
        if @sub28ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title28 = params[:sub28ject][:title28]
        teacher28 = params[:sub28ject][:teacher28]
        @sub28ject = Sub28ject.find(params[:id])
        if @sub28ject.update(title28: title28, teacher28: teacher28)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub28ject = Sub28ject.find(params[:id])
        @sub28ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub28ject = Sub28ject.new
    end
    def create
        title28 = params[:sub28ject][:title28]
        teacher28 = params[:sub28ject][:teacher28]
        @sub28ject = Sub28ject.new(title28: title28, teacher28: teacher28)
        @sub28ject.user_id = current_user.id
        if @sub28ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
