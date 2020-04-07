class User < ActiveRecord::Base
    has_many :vacations
        
        has_secure_password

end
