get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  #TODO IMPLEMENT ME
  erb :event_create
end

post '/events/create' do
  #TODO IMPLEMENT ME
  @event = Event.create(organizer_name: params[:organizer_name],
               organizer_email: params[:organizer_email],
               title: params[:title],
               date: params[:date])
@errors = @event.errors.full_messages
  if @errors.length >= 1
    erb :event_create
  else
    redirect '/'
  end
end
