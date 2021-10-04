class Sub19jectsController < ApplicationController
    def index
        @sub19jects = Sub19ject.all
    end
    
    def edit
        @sub19ject = Sub19ject.find(params[:id])
        if @sub19ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title19 = params[:sub19ject][:title19]
        teacher19 = params[:sub19ject][:teacher19]
        @sub19ject = Sub19ject.find(params[:id])
        if @sub19ject.update(title19: title19, teacher19: teacher19)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub19ject = Sub19ject.find(params[:id])
        @sub19ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub19ject = Sub19ject.new
    end
    def create
        title19 = params[:sub19ject][:title19]
        teacher19 = params[:sub19ject][:teacher19]
        @sub19ject = Sub19ject.new(title19: title19, teacher19: teacher19)
        @sub19ject.user_id = current_user.id
        if @sub19ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
