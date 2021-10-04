class Sub18jectsController < ApplicationController
    def index
        @sub18jects = Sub18ject.all
    end
    
    def edit
        @sub18ject = Sub18ject.find(params[:id])
        if @sub18ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title18 = params[:sub18ject][:title18]
        teacher18 = params[:sub18ject][:teacher18]
        @sub18ject = Sub18ject.find(params[:id])
        if @sub18ject.update(title18: title18, teacher18: teacher18)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub18ject = Sub18ject.find(params[:id])
        @sub18ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub18ject = Sub18ject.new
    end
    def create
        title18 = params[:sub18ject][:title18]
        teacher18 = params[:sub18ject][:teacher18]
        @sub18ject = Sub18ject.new(title18: title18, teacher18: teacher18)
        @sub18ject.user_id = current_user.id
        if @sub18ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
