get '/' do
  # Look in app/views/index.erb
  @made_notes = Note.all
  erb :index

end

post '/' do
 @note = Note.create(title: params[:title], description: params[:description])
 redirect '/'
end

get '/:id' do
  @this_note = Note.find(params[:id])
  erb :note
end

get '/:id/edit' do
  @edit_this_note = Note.find(params[:id])
  erb :edit
end

post '/:id/edit' do
  note = Note.find(params[:id])
  note.update_attributes(title: params[:title], description: params[:description])
  redirect "/"
end

get'/:id/delete' do
  note = Note.find(params[:id])
  note.destroy
  erb :delete
end
