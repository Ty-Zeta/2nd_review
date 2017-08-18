require "sinatra"

get '/' do
  erb :sandwich_parts
end

post '/choosing' do
  choice = params[:choice].to_s
  redirect '/confirm?choice=' + choice
end

get '/confirm' do
  choice = params[:choice].split
  erb :confirm, :locals => {:choice => choice}
end

post '/confirm' do
  choice = params[:choice].to_s
  redirect '/results?choice=' + choice
end

get '/results' do
  choice = params[:choice].split
  erb :results, :locals => {:choice => choice}
end

# post '/choosing' do
#   meat = params[:meat]
#   veg = params[:veg]
#   cheese = params[:cheese]
#   redirect '/confirm?meat=' + meat + '&veg=' + veg + '&cheese=' + cheese
# end

# get '/confirm' do
#   meat = params[:meat]
#   veg = params[:veg]
#   cheese = params[:cheese]
#   erb :confirm, :locals => {:meat => meat, :veg => veg, :cheese => cheese}
# end

# post '/choosing' do
#   meat1 = params[:meat1]
#   meat2 = params[:meat2]
#   meat3 = params[:meat3]
#   meat4 = params[:meat4]
#   veg1 = params[:veg1]
#   veg2 = params[:veg2]
#   veg3 = params[:veg3]
#   veg4 = params[:veg4]
#   cheese1 = params[:cheese1]
#   cheese2 = params[:cheese2]
#   cheese3 = params[:cheese3]
#   cheese4 = params[:cheese4]
#   redirect '/confirm?meat1=' + meat1 + '&meat2=' + meat2 + '&meat3=' + meat3 + '&meat4=' + meat4 + '&veg1=' + veg1 + '&veg2=' + veg2 + '&veg3=' + veg3 + '&veg4=' + veg4 + '&cheese1=' + cheese1 + '&cheese2=' + cheese2 + '&cheese3=' + cheese3 + '&cheese4=' + cheese4
# end

# get '/confirm' do
#   meat1 = params[:meat1]
#   meat2 = params[:meat2]
#   meat3 = params[:meat3]
#   meat4 = params[:meat4]
#   veg1 = params[:veg1]
#   veg2 = params[:veg2]
#   veg3 = params[:veg3]
#   veg4 = params[:veg4]
#   cheese1 = params[:cheese1]
#   cheese2 = params[:cheese2]
#   cheese3 = params[:cheese3]
#   cheese4 = params[:cheese4]
#   erb :confirm, :locals => {:meat1 => meat1, :meat2 => meat2, :meat3 => meat3, :meat4 => meat4, :veg1 => veg1, :veg2 => veg2, :veg3 => veg3, :veg4 => veg4, :cheese1 => cheese1, :cheese2 => cheese2, :cheese3 => cheese3, :cheese4 => cheese4}
# end