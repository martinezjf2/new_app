class Vacation < ActiveRecord::Base
    has_many :shows
    belongs_to :user
end
