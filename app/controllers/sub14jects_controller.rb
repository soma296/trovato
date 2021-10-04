class Sub14jectsController < ApplicationController
    def index
        @sub14jects = Sub14ject.all
    end
    
    def edit
        @sub14ject = Sub14ject.find(params[:id])
        if @sub14ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title14 = params[:sub14ject][:title14]
        teacher14 = params[:sub14ject][:teacher14]
        @sub14ject = Sub14ject.find(params[:id])
        if @sub14ject.update(title14: title14, teacher14: teacher14)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub14ject = Sub14ject.find(params[:id])
        @sub14ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub14ject = Sub14ject.new
    end
    def create
        title14 = params[:sub14ject][:title14]
        teacher14 = params[:sub14ject][:teacher14]
        @sub14ject = Sub14ject.new(title14: title14, teacher14: teacher14)
        @sub14ject.user_id = current_user.id
        if @sub14ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
