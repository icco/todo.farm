BrainChild::App.controllers  do
  get :index do
    @day = Time.new
    @yesterday, @day, @tomorrow = days(@day.year, @day.month, @day.day)
    render :index
  end

  get :day, :with => [:year, :month, :day], :map => "/" do
    @yesterday, @day, @tomorrow = days(params[:year], params[:month], params[:day])
    @lines = Line.where(:date => @day)

    render :day
  end

  post :day, :with => [:year, :month, :day], :map => "/" do
    @yesterday, @day, @tomorrow = days(params[:year], params[:month], params[:day])
    line = Line.new
    line.date = @day
    line.text = params["line"]
    line.note = params["note"]
    line.save

    redirect url_for(:day, :day => @day.day, :month => @day.month, :year => @day.year)
  end
end
