class Vacation < ActiveRecord::Base
    has_many :shows
    belongs_to :user

    validates :vacation_name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :resort_name, presence: true
    validates :description, presence: true

end
