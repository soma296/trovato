class Sub27jectsController < ApplicationController
    def index
        @sub27jects = Sub27ject.all
    end
    
    def edit
        @sub27ject = Sub27ject.find(params[:id])
        if @sub27ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title27 = params[:sub27ject][:title27]
        teacher27 = params[:sub27ject][:teacher27]
        @sub27ject = Sub27ject.find(params[:id])
        if @sub27ject.update(title27: title27, teacher27: teacher27)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub27ject = Sub27ject.find(params[:id])
        @sub27ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub27ject = Sub27ject.new
    end
    def create
        title27 = params[:sub27ject][:title27]
        teacher27 = params[:sub27ject][:teacher27]
        @sub27ject = Sub27ject.new(title27: title27, teacher27: teacher27)
        @sub27ject.user_id = current_user.id
        if @sub27ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
