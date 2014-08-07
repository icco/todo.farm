BrainChild::App.controllers  do
  get :index do
    @day = Time.new
    render :index
  end

  get :day, :with => [:year, :month, :day], :map => "/" do
    @day = Time.utc(params[:year], params[:month], params[:day])
    @lines = Line.where(:date => @day)

    render :day
  end

  post :day, :with => [:year, :month, :day], :map => "/" do
    p params
  end
end
