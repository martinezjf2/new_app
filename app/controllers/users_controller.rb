class UsersController < ApplicationController

    get '/users' do
        @users = User.all
        erb :'users/index'
    end


    get '/signup' do
        if Helpers.is_logged_in?(session)
            user = Helpers.current_user(session)
            redirect to "/users/#{user.id}"
        end
        erb :'users/sign_up'

    end

    get '/login' do
        if Helpers.is_logged_in?(session)
            user = Helpers.current_user(session)
            redirect to "/users/#{user.id}"
         end
        erb :'users/login'
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        @user_password = user.authenticate(params[:password])
        if user && @user_password
            session[:user_id] = user.id
            # flash[:message] = "Successul"
            redirect to "/users/#{user.id}"
            # if username is not valid, it gives me a NoMethodError
        else
            if !user
                flash[:message] = "Username not found, Please try again"
            elsif !@user_password
                flash[:message] = "Invalid Password, Please try again"
            end
            redirect to '/login'
        end
    end


    post '/signup' do
        user = User.create(params)
        if user.valid?
            session[:user_id] = user.id
            redirect to "/users/#{user.id}"
        else
            if user.errors.messages[:username]
                flash[:message] = "Username Has Already Been Used, Please try again"
            elsif user.errors.messages[:email]
                flash[:message] = "Email Invalid, Please try again" 
            end
            redirect '/signup' 
        end
    end

    get '/users/:id' do
        if Helpers.is_logged_in?(session) && User.find_by(id: params[:id])
            @user = User.find_by(id: params[:id])
            @vacations = @user.vacations
        else
            redirect to '/'
        end
        erb :'users/show'
    end


    get '/logout' do
        session.clear
        redirect to '/'
    end



end
