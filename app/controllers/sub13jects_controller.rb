class Sub13jectsController < ApplicationController
    def index
        @sub13jects = Sub13ject.all
    end
    
    def edit
        @sub13ject = Sub13ject.find(params[:id])
        if @sub13ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title13 = params[:sub13ject][:title13]
        teacher13 = params[:sub13ject][:teacher13]
        @sub13ject = Sub13ject.find(params[:id])
        if @sub13ject.update(title13: title13, teacher13: teacher13)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub13ject = Sub13ject.find(params[:id])
        @sub13ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub13ject = Sub13ject.new
    end
    def create
        title13 = params[:sub13ject][:title13]
        teacher13 = params[:sub13ject][:teacher13]
        @sub13ject = Sub13ject.new(title13: title13, teacher13: teacher13)
        @sub13ject.user_id = current_user.id
        if @sub13ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
