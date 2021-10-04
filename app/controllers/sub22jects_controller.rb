class Sub22jectsController < ApplicationController
    def index
        @sub22jects = Sub22ject.all
    end
    
    def edit
        @sub22ject = Sub22ject.find(params[:id])
        if @sub22ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title22 = params[:sub22ject][:title22]
        teacher22 = params[:sub22ject][:teacher22]
        @sub22ject = Sub22ject.find(params[:id])
        if @sub22ject.update(title22: title22, teacher22: teacher22)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub22ject = Sub22ject.find(params[:id])
        @sub22ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub22ject = Sub22ject.new
    end
    def create
        title22 = params[:sub22ject][:title22]
        teacher22 = params[:sub22ject][:teacher22]
        @sub22ject = Sub22ject.new(title22: title22, teacher22: teacher22)
        @sub22ject.user_id = current_user.id
        if @sub22ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
