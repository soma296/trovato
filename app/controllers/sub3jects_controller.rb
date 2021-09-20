class Sub3jectsController < ApplicationController
    def index
        @sub3jects = Sub3ject.all
    end
    
    def edit
        @sub3ject = Sub3ject.find(params[:id])
        if @sub3ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title3 = params[:sub3ject][:title3]
        teacher3 = params[:sub3ject][:teacher3]
        @sub3ject = Sub3ject.find(params[:id])
        if @sub3ject.update(title3: title3, teacher3: teacher3)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub3ject = Sub3ject.find(params[:id])
        @sub3ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub3ject = Sub3ject.new
    end
    def create
        title3 = params[:sub3ject][:title3]
        teacher3 = params[:sub3ject][:teacher3]
        @sub3ject = Sub3ject.new(title3: title3, teacher3: teacher3)
        @sub3ject.user_id = current_user.id
        if @sub3ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
