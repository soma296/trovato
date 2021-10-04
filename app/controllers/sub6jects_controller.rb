class Sub6jectsController < ApplicationController
    def index
        @sub6jects = Sub6ject.all
    end
    
    def edit
        @sub6ject = Sub6ject.find(params[:id])
        if @sub6ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title6 = params[:sub6ject][:title6]
        teacher6 = params[:sub6ject][:teacher6]
        @sub6ject = Sub6ject.find(params[:id])
        if @sub6ject.update(title6: title6, teacher6: teacher6)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub6ject = Sub6ject.find(params[:id])
        @sub6ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub6ject = Sub6ject.new
    end
    def create
        title6 = params[:sub6ject][:title6]
        teacher6 = params[:sub6ject][:teacher6]
        @sub6ject = Sub6ject.new(title6: title6, teacher6: teacher6)
        @sub6ject.user_id = current_user.id
        if @sub6ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
