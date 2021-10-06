class Sub16jectsController < ApplicationController
    def index
        @sub16jects = Sub16ject.all
    end
    
    def edit
        @sub16ject = Sub16ject.find(params[:id])
        if @sub16ject.user != current_user
            redirect_to sub1jects_path, danger: "不正なアクセスです。"
        end
    end
    def update
        title16 = params[:sub16ject][:title16]
        teacher16 = params[:sub16ject][:teacher16]
        @sub16ject = Sub16ject.find(params[:id])
        if @sub16ject.update(title16: title16, teacher16: teacher16)
        redirect_to "/", success: "課題を更新しました。"
        else
        render :edit
        end
    end
    def destroy
        @sub16ject = Sub16ject.find(params[:id])
        @sub16ject.destroy
        redirect_to root_path, danger: "課題を削除しました。"
    end
    
    def new
        @sub16ject = Sub16ject.new
    end
    def create
        title16 = params[:sub16ject][:title16]
        teacher16 = params[:sub16ject][:teacher16]
        @sub16ject = Sub16ject.new(title16: title16, teacher16: teacher16)
        @sub16ject.user_id = current_user.id
        if @sub16ject.save
        redirect_to "/", success: "時間割を登録しました。"
        else
        render :new
        end
    end
end
