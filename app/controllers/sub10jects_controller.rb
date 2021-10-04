class Sub10jectsController < ApplicationController
    def index
        @sub10jects = Sub10ject.all
    end
    
    def edit
        @sub10ject = Sub10ject.find(params[:id])
        if @sub10ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title10 = params[:sub10ject][:title10]
        teacher10 = params[:sub10ject][:teacher10]
        @sub10ject = Sub10ject.find(params[:id])
        if @sub10ject.update(title10: title10, teacher10: teacher10)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub10ject = Sub10ject.find(params[:id])
        @sub10ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub10ject = Sub10ject.new
    end
    def create
        title10 = params[:sub10ject][:title10]
        teacher10 = params[:sub10ject][:teacher10]
        @sub10ject = Sub10ject.new(title10: title10, teacher10: teacher10)
        @sub10ject.user_id = current_user.id
        if @sub10ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
