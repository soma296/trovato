class TwobringingsController < ApplicationController
    def index
        @bringings = Bringing.all
        @q = Bringing.ransack(params[:q])
        @bringings = @q.result(distinct: true)
        if params[:button5]
            redirect_to controller: :bringings, action: :index
        end
    end
end
