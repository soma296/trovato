class Sub11jectsController < ApplicationController
    def index
        @sub11jects = Sub11ject.all
    end
    
    def edit
        @sub11ject = Sub11ject.find(params[:id])
        if @sub11ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title11 = params[:sub11ject][:title11]
        teacher11 = params[:sub11ject][:teacher11]
        @sub11ject = Sub11ject.find(params[:id])
        if @sub11ject.update(title11: title11, teacher11: teacher11)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub11ject = Sub11ject.find(params[:id])
        @sub11ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub11ject = Sub11ject.new
    end
    def create
        title11 = params[:sub11ject][:title11]
        teacher11 = params[:sub11ject][:teacher11]
        @sub11ject = Sub11ject.new(title11: title11, teacher11: teacher11)
        @sub11ject.user_id = current_user.id
        if @sub11ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
