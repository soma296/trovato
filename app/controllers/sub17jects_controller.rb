class Sub17jectsController < ApplicationController
    def index
        @sub17jects = Sub17ject.all
    end
    
    def edit
        @sub17ject = Sub17ject.find(params[:id])
        if @sub17ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title17 = params[:sub17ject][:title17]
        teacher17 = params[:sub17ject][:teacher17]
        @sub17ject = Sub17ject.find(params[:id])
        if @sub17ject.update(title17: title17, teacher17: teacher17)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub17ject = Sub17ject.find(params[:id])
        @sub17ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub17ject = Sub17ject.new
    end
    def create
        title17 = params[:sub17ject][:title17]
        teacher17 = params[:sub17ject][:teacher17]
        @sub17ject = Sub17ject.new(title17: title17, teacher17: teacher17)
        @sub17ject.user_id = current_user.id
        if @sub17ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
