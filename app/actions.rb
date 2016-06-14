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
