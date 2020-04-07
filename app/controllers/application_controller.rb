require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions #keep track of these sessions through the server, browser will keep a session saved through a cookie,(sessions are stored in a server, cookies are stored in the browser which keeps track of the specific session we are dealing with.) Session will stay the same until we log out the user. Also keeps our user logged in, and keeps it within the sessions hash.
    set :session_secret, "password"
    register Sinatra::Flash
  end

  get "/" do
    erb :welcome
  end

  get "/2" do
    erb :welcome1
  end


end
