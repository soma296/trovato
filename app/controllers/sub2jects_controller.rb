class Sub2jectsController < ApplicationController
    def index
        @sub2jects = Sub2ject.all
    end
    
    def edit
        @sub2ject = Sub2ject.find(params[:id])
        if @sub2ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title2 = params[:sub2ject][:title2]
        teacher2 = params[:sub2ject][:teacher2]
        @sub2ject = Sub2ject.find(params[:id])
        if @sub2ject.update(title2: title2, teacher2: teacher2)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub2ject = Sub2ject.find(params[:id])
        @sub2ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub2ject = Sub2ject.new
    end
    def create
        title2 = params[:sub2ject][:title2]
        teacher2 = params[:sub2ject][:teacher2]
        @sub2ject = Sub2ject.new(title2: title2, teacher2: teacher2)
        @sub2ject.user_id = current_user.id
        if @sub2ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
