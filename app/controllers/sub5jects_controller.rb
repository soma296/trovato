class Sub5jectsController < ApplicationController
    def index
        @sub5jects = Sub5ject.all
    end
    
    def edit
        @sub5ject = Sub5ject.find(params[:id])
        if @sub5ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title5 = params[:sub5ject][:title5]
        teacher5 = params[:sub5ject][:teacher5]
        @sub5ject = Sub5ject.find(params[:id])
        if @sub5ject.update(title5: title5, teacher5: teacher5)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub5ject = Sub5ject.find(params[:id])
        @sub5ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub5ject = Sub5ject.new
    end
    def create
        title5 = params[:sub5ject][:title5]
        teacher5 = params[:sub5ject][:teacher5]
        @sub5ject = Sub5ject.new(title5: title5, teacher5: teacher5)
        @sub5ject.user_id = current_user.id
        if @sub5ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
