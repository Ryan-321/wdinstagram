get '/pictures' do
  @pictures = Picture.all
  erb :index
end

get '/pictures/new' do
    erb :new
end

post '/pictures' do
    @picture = Picture.create(params[:picture])
    redirect "/pictures"
end

get '/pictures/:id' do
  @picture = Picture.find(params[:id])
  erb :show
end

get '/pictures/:id/edit' do
  @picture = Picture.find(params[:id])
  erb :edit
end

put '/pictures/:id' do
  @picture = Picture.find(params[:id])
  @picture.update(params[:picture])
  redirect "/pictures/#{@picture.id}"
end

delete '/pictures/:id' do
  @picture = Picture.find(params[:id])
  @picture.destroy
  redirect "/pictures"
end
