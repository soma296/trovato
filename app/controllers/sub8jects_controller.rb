class Sub8jectsController < ApplicationController
    def index
        @sub8jects = Sub8ject.all
    end
    
    def edit
        @sub8ject = Sub8ject.find(params[:id])
        if @sub8ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title8 = params[:sub8ject][:title8]
        teacher8 = params[:sub8ject][:teacher8]
        @sub8ject = Sub8ject.find(params[:id])
        if @sub8ject.update(title8: title8, teacher8: teacher8)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub8ject = Sub8ject.find(params[:id])
        @sub8ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub8ject = Sub8ject.new
    end
    def create
        title8 = params[:sub8ject][:title8]
        teacher8 = params[:sub8ject][:teacher8]
        @sub8ject = Sub8ject.new(title8: title8, teacher8: teacher8)
        @sub8ject.user_id = current_user.id
        if @sub8ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
