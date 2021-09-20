class Sub26jectsController < ApplicationController
    def index
        @sub26jects = Sub26ject.all
    end
    
    def edit
        @sub26ject = Sub26ject.find(params[:id])
        if @sub26ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title26 = params[:sub26ject][:title26]
        teacher26 = params[:sub26ject][:teacher26]
        @sub26ject = Sub26ject.find(params[:id])
        if @sub26ject.update(title26: title26, teacher26: teacher26)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub26ject = Sub26ject.find(params[:id])
        @sub26ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub26ject = Sub26ject.new
    end
    def create
        title26 = params[:sub26ject][:title26]
        teacher26 = params[:sub26ject][:teacher26]
        @sub26ject = Sub26ject.new(title26: title26, teacher26: teacher26)
        @sub26ject.user_id = current_user.id
        if @sub26ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
