class Sub29jectsController < ApplicationController
    def index
        @sub29jects = Sub29ject.all
    end
    
    def edit
        @sub29ject = Sub29ject.find(params[:id])
        if @sub29ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title29 = params[:sub29ject][:title29]
        teacher29 = params[:sub29ject][:teacher29]
        @sub29ject = Sub29ject.find(params[:id])
        if @sub29ject.update(title29: title29, teacher29: teacher29)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub29ject = Sub29ject.find(params[:id])
        @sub29ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub29ject = Sub29ject.new
    end
    def create
        title29 = params[:sub29ject][:title29]
        teacher29 = params[:sub29ject][:teacher29]
        @sub29ject = Sub29ject.new(title29: title29, teacher29: teacher29)
        @sub29ject.user_id = current_user.id
        if @sub29ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
