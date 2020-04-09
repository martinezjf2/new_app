class VacationsController < ApplicationController

    get '/vacations/new' do
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
        @vacation = Vacation.find_by(id: params[:id])
        if !@recipe
            redirect to '/vacations'
        end
        erb :'vacations/show'
    end


end
