# app.rb
require 'sinatra'

# enable static files to be served outside of .public/ folder
set :public_folder, 'app'

# enable this site to be embedded as an iframe
configure do
    set :protection, except: [:frame_options]
end

get '/' do
  File.read('app/index.html')
end

get '/data/ChemTrack.csv' do
  send_file('app/data/ChemTrack.csv', type: 'text/csv')
end

# # CRUD routes
# post '/' do
# #  .. create something ..
# end

# get '/' do
# #  .. read something ..
# end

# put '/' do
# #  .. update something ..
# end

# delete '/' do
# #  .. destroy something ..
# end