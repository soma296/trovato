class Sub4jectsController < ApplicationController
    def index
        @sub4jects = Sub4ject.all
    end
    
    def edit
        @sub4ject = Sub4ject.find(params[:id])
        if @sub4ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title4 = params[:sub4ject][:title4]
        teacher4 = params[:sub4ject][:teacher4]
        @sub4ject = Sub4ject.find(params[:id])
        if @sub4ject.update(title4: title4, teacher4: teacher4)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub4ject = Sub4ject.find(params[:id])
        @sub4ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub4ject = Sub4ject.new
    end
    def create
        title4 = params[:sub4ject][:title4]
        teacher4 = params[:sub4ject][:teacher4]
        @sub4ject = Sub4ject.new(title4: title4, teacher4: teacher4)
        @sub4ject.user_id = current_user.id
        if @sub4ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
