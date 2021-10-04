class Sub24jectsController < ApplicationController
    def index
        @sub24jects = Sub24ject.all
    end
    
    def edit
        @sub24ject = Sub24ject.find(params[:id])
        if @sub24ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title24 = params[:sub24ject][:title24]
        teacher24 = params[:sub24ject][:teacher24]
        @sub24ject = Sub24ject.find(params[:id])
        if @sub24ject.update(title24: title24, teacher24: teacher24)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub24ject = Sub24ject.find(params[:id])
        @sub24ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub24ject = Sub24ject.new
    end
    def create
        title24 = params[:sub24ject][:title24]
        teacher24 = params[:sub24ject][:teacher24]
        @sub24ject = Sub24ject.new(title24: title24, teacher24: teacher24)
        @sub24ject.user_id = current_user.id
        if @sub24ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
