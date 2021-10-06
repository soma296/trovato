class Sub23jectsController < ApplicationController
    def index
        @sub23jects = Sub23ject.all
    end
    
    def edit
        @sub23ject = Sub23ject.find(params[:id])
        if @sub23ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title23 = params[:sub23ject][:title23]
        teacher23 = params[:sub23ject][:teacher23]
        @sub23ject = Sub23ject.find(params[:id])
        if @sub23ject.update(title23: title23, teacher23: teacher23)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub23ject = Sub23ject.find(params[:id])
        @sub23ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub23ject = Sub23ject.new
    end
    def create
        title23 = params[:sub23ject][:title23]
        teacher23 = params[:sub23ject][:teacher23]
        @sub23ject = Sub23ject.new(title23: title23, teacher23: teacher23)
        @sub23ject.user_id = current_user.id
        if @sub23ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
