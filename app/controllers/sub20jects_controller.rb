class Sub20jectsController < ApplicationController
    def index
        @sub20jects = Sub20ject.all
    end
    
    def edit
        @sub20ject = Sub20ject.find(params[:id])
        if @sub20ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title20 = params[:sub20ject][:title20]
        teacher20 = params[:sub20ject][:teacher20]
        @sub20ject = Sub20ject.find(params[:id])
        if @sub20ject.update(title20: title20, teacher20: teacher20)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub20ject = Sub20ject.find(params[:id])
        @sub20ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub20ject = Sub20ject.new
    end
    def create
        title20 = params[:sub20ject][:title20]
        teacher20 = params[:sub20ject][:teacher20]
        @sub20ject = Sub20ject.new(title20: title20, teacher20: teacher20)
        @sub20ject.user_id = current_user.id
        if @sub20ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
