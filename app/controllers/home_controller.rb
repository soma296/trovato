class HomeController < ApplicationController
  def index
    @today_tasks = Task.where(deadline: Date.today)
    @today_bringings = Bringing.where(day: Date.today)
    @subjects = Subject.all
    @sub1jects = Sub1ject.all
    @sub2jects = Sub2ject.all
    @sub3jects = Sub3ject.all
    @sub4jects = Sub4ject.all
    @sub5jects = Sub5ject.all
    @sub6jects = Sub6ject.all
    @sub7jects = Sub7ject.all
    @sub8jects = Sub8ject.all
    @sub9jects = Sub9ject.all
    @sub10jects = Sub10ject.all
    @sub11jects = Sub11ject.all
    @sub12jects = Sub12ject.all
    @sub13jects = Sub13ject.all
    @sub14jects = Sub14ject.all
    @sub15jects = Sub15ject.all
    @sub16jects = Sub16ject.all
    @sub17jects = Sub17ject.all
    @sub18jects = Sub18ject.all
    @sub19jects = Sub19ject.all
    @sub20jects = Sub20ject.all
    @sub21jects = Sub21ject.all
    @sub22jects = Sub22ject.all
    @sub23jects = Sub23ject.all
    @sub24jects = Sub24ject.all
    @sub25jects = Sub25ject.all
    @sub26jects = Sub26ject.all
    @sub27jects = Sub27ject.all
    @sub28jects = Sub28ject.all
    @sub29jects = Sub29ject.all
    if params[:button3]
      redirect_to controller: :twohomes, action: :success
    end
  end
end
