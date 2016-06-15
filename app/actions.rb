# Homepage (Root path)
get '/' do
	erb :index
end


get '/messages' do
	# 'Message List here'	# add a /messages path to our app where people will see a list of all messages.
	# @messages = Message.all
	#@message = "Deepak is learning Sinatra"

	@messages = Message.all
	erb :'messages/index'
end


post '/messages' do  #accepting the form data and updating the messages table in db
	@message = Message.new(
		title: params[:title], #params title comes from form. title on left is DB
		content: params[:content],
		author: params[:author]
	)
	if @message.save
		redirect '/messages'
	else
		erb :'messages/new'
	end
end

get '/messages/new' do
	erb :'messages/new'
end

get '/messages/:id' do
	@message = Message.find(params[:id])
	erb :'messages/show'
end