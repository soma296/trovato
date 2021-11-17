class BringingsController < ApplicationController
    #セキュリティ、ログインさせる
    before_action :authenticate_user!
    def new
    @bringing = Bringing.new
    end
    def create
        day = params[:bringing][:day]
        title = params[:bringing][:title]
        bringing = params[:bringing][:bringing]
        week = params[:bringing][:week]
        @bringing = Bringing.new(day: day, title: title, bringing: bringing, week: week)
        @bringing.user_id = current_user.id
        @bringing.save
        if @bringing.week == true
            16.times do
                day = day.to_date + 7
                @bringing = Bringing.new(day: day, title: title, bringing: bringing, week: week)
                @bringing.user_id = current_user.id
                @bringing.save
            end
        end
        @bringing.user_id = current_user.id
        if @bringing.save
            redirect_to bringing_path(@bringing), success: "持ち物を投稿しました。"
        else
            render :new
        end
        end
    def index
        @bringings = Bringing.all
        @q = Bringing.ransack(params[:q])
        @bringings = @q.result(distinct: true)
    end
    def show
        @bringing = Bringing.find(params[:id])
    end
    def edit
        @bringing = Bringing.find(params[:id])
        if @bringing.user != current_user
            redirect_to bringings_path, danger: "不正なアクセスです。"
        end
    end
    def update
        day = params[:bringing][:day]
        title = params[:bringing][:title]
        bringing = params[:bringing][:bringing]
        week = params[:bringing][:week]
        @bringing = Bringing.find(params[:id])
        if @bringing.update(day: day, title: title, bringing: bringing, week: week)
            redirect_to bringing_path(@bringing), success: "持ち物を更新しました。"
        else
            render :edit
        end
    end
    def destroy
        @bringing = Bringing.find(params[:id])
        @bringing = Bringing.find_by(id: params[:id], user_id: current_user.id)
        # return unless @bringing
        if @bringing.nil?
            redirect_to "/bringings", danger: "持ち物を削除できませんでした。"
        end
        @bringing.destroy
        redirect_to "/bringings", danger: "持ち物を削除しました。"
    end
    def destroy_all
        @bringings = Bringing.where(id: params[:bringings], user_id: current_user.id)
        @bringings.destroy_all
        respond_to do |format|
        format.html { redirect_to bringings_url, danger: '持ち物を削除しました。' }
        format.json { head :no_content }
        end
    end
end
