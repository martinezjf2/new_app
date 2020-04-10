class VacationsController < ApplicationController


    get '/vacations' do
        @vacations = Vacation.all
        erb :'vacations/index'
    end

    get '/vacations/new' do
        if !Helpers.is_logged_in?(session)
            redirect '/'
        end
        erb :'vacations/new'
    end

    post '/vacations' do
       vacation = Vacation.create(params)
       user = Helpers.current_user(session)
       vacation.user = user
       vacation.save
       redirect to "/users/#{user.id}"
    end

    get '/vacations/:id' do
        if !Helpers.is_logged_in?(session)
            redirect '/'
        end
        @vacation = Vacation.find_by(id: params[:id])
        if !@recipe
            redirect to '/vacations'
        end
        erb :'vacations/show'
    end #check if this method is working

#Also need to add a delete vacations button, and create a flash message when successfully deleted

#Search how to change backgrounds for every time i refresh the login page, or just assign a background for the signup and the login
end
