class Sub12jectsController < ApplicationController
    def index
        @sub12jects = Sub12ject.all
    end
    
    def edit
        @sub12ject = Sub12ject.find(params[:id])
        if @sub12ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title12 = params[:sub12ject][:title12]
        teacher12 = params[:sub12ject][:teacher12]
        @sub12ject = Sub12ject.find(params[:id])
        if @sub12ject.update(title12: title12, teacher12: teacher12)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub12ject = Sub12ject.find(params[:id])
        @sub12ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub12ject = Sub12ject.new
    end
    def create
        title12 = params[:sub12ject][:title12]
        teacher12 = params[:sub12ject][:teacher12]
        @sub12ject = Sub12ject.new(title12: title12, teacher12: teacher12)
        @sub12ject.user_id = current_user.id
        if @sub12ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
