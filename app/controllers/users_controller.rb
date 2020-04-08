class UsersController < ApplicationController

    get '/signup' do
        erb :'users/sign_up'
    end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:message] = "Successul"
            redirect to "/users/#{user.id}"
        else
            redirect to '/signup'
        end
    end


    post '/signup' do
        user = User.create(params)
        if user.valid?
            session[:user_id] = user.id
        #what is the difference between re-directing and rendering?
            redirect to "/users/#{user.id}"
        else
            if user.errors.messages[:username]
                flash[:message] = "Username Has Already Been Used, Please try again"
            elsif user.errors.messages[:password]
                flash[:message] = "Password Invalid, Please try again" #do you think i should use this within the '/login' get request instead?
            #flash[:message] = "Input Invalid, Please try again"
            redirect '/signup' #or maybe an error page that has 2 a href links to either signup or login
            end
        end
    end

    get '/users/:id' do
        if User.find_by(id: params[:id])
            @user = User.find_by(id: params[:id])
        else
            redirect to '/'
        end
        erb :'users/show'
    end


end
