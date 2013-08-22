get '/event/create' do
  erb :create_event
end

#edit event
get '/event/show/:id' do
end

#show all of a user's events
get '/events/:user_id' do
end

post '/event/create' do
  event = params[:event]
  @event = Event.create(user_id: current_user.id, name: event[:name],
                        location: event[:location],
                        start_time: event[:start_time], 
                        end_time: event[:end_time])
  erb :create_event, layout: false
end


