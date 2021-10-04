class Sub1jectsController < ApplicationController
    def index
        @sub1jects = Sub1ject.all
    end
    
    def edit
        @sub1ject = Sub1ject.find(params[:id])
        if @sub1ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title1 = params[:sub1ject][:title1]
        teather1 = params[:sub1ject][:teather1]
        @sub1ject = Sub1ject.find(params[:id])
        if @sub1ject.update(title1: title1, teather1: teather1)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub1ject = Sub1ject.find(params[:id])
        @sub1ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub1ject = Sub1ject.new
    end
    def create
        title1 = params[:sub1ject][:title1]
        teather1 = params[:sub1ject][:teather1]
        @sub1ject = Sub1ject.new(title1: title1, teather1: teather1)
        @sub1ject.user_id = current_user.id
        if @sub1ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
