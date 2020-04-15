




class Helpers
    def self.current_user(session)
        User.find_by(id: session[:user_id])
    end
    
    def self.is_logged_in?(session)
        # session[:user_id] ? true : false
        !!session[:user_id]
    end

    # def self.if_not_logged_in(session)
    #     if !Helpers.is_logged_in?(session)
    #         redirect '/'
    #     end
    # end
end

