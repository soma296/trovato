class Sub25jectsController < ApplicationController
    def index
        @sub25jects = Sub25ject.all
    end
    
    def edit
        @sub25ject = Sub25ject.find(params[:id])
        if @sub25ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title25 = params[:sub25ject][:title25]
        teacher25 = params[:sub25ject][:teacher25]
        @sub25ject = Sub25ject.find(params[:id])
        if @sub25ject.update(title25: title25, teacher25: teacher25)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub25ject = Sub25ject.find(params[:id])
        @sub25ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub25ject = Sub25ject.new
    end
    def create
        title25 = params[:sub25ject][:title25]
        teacher25 = params[:sub25ject][:teacher25]
        @sub25ject = Sub25ject.new(title25: title25, teacher25: teacher25)
        @sub25ject.user_id = current_user.id
        if @sub25ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
