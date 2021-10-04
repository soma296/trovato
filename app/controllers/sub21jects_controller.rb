class Sub21jectsController < ApplicationController
    def index
        @sub21jects = Sub21ject.all
    end
    
    def edit
        @sub21ject = Sub21ject.find(params[:id])
        if @sub21ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title21 = params[:sub21ject][:title21]
        teacher21 = params[:sub21ject][:teacher21]
        @sub21ject = Sub21ject.find(params[:id])
        if @sub21ject.update(title21: title21, teacher21: teacher21)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub21ject = Sub21ject.find(params[:id])
        @sub21ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub21ject = Sub21ject.new
    end
    def create
        title21 = params[:sub21ject][:title21]
        teacher21 = params[:sub21ject][:teacher21]
        @sub21ject = Sub21ject.new(title21: title21, teacher21: teacher21)
        @sub21ject.user_id = current_user.id
        if @sub21ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
