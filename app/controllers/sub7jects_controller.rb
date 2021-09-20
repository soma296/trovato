class Sub7jectsController < ApplicationController
    def index
        @sub7jects = Sub7ject.all
    end
    
    def edit
        @sub7ject = Sub7ject.find(params[:id])
        if @sub7ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title7 = params[:sub7ject][:title7]
        teacher7 = params[:sub7ject][:teacher7]
        @sub7ject = Sub7ject.find(params[:id])
        if @sub7ject.update(title7: title7, teacher7: teacher7)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub7ject = Sub7ject.find(params[:id])
        @sub7ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub7ject = Sub7ject.new
    end
    def create
        title7 = params[:sub7ject][:title7]
        teacher7 = params[:sub7ject][:teacher7]
        @sub7ject = Sub7ject.new(title7: title7, teacher7: teacher7)
        @sub7ject.user_id = current_user.id
        if @sub7ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
