class Sub15jectsController < ApplicationController
    def index
        @sub15jects = Sub15ject.all
    end
    
    def edit
        @sub15ject = Sub15ject.find(params[:id])
        if @sub15ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title15 = params[:sub15ject][:title15]
        teacher15 = params[:sub15ject][:teacher15]
        @sub15ject = Sub15ject.find(params[:id])
        if @sub15ject.update(title15: title15, teacher15: teacher15)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub15ject = Sub15ject.find(params[:id])
        @sub15ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub15ject = Sub15ject.new
    end
    def create
        title15 = params[:sub15ject][:title15]
        teacher15 = params[:sub15ject][:teacher15]
        @sub15ject = Sub15ject.new(title15: title15, teacher15: teacher15)
        @sub15ject.user_id = current_user.id
        if @sub15ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
