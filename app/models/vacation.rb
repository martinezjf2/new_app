class Vacation < ActiveRecord::Base
    has_many :shows
    belongs_to :user

    validates :vacation_name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :resort_name, presence: true
    validates :description, presence: true

end


# Well first the difference between the .new and the .create is that the .create creates an object and saves it to the database IF the validations passed. The .new method only creates the instance but does not attempt to validate or save. Now that being said, if there is a missing input, let's just say I fill out the rest of the form and did not put vacation name, what happens is that within our models we have these validations, and these validations are basically a checklist that when the form is submitted, the form should contain everything that it is being validated to presence of true. So, if vacation name is empty, what I did was I used binding.pry and tried playing around with it, the .create method would return the instance of the vacation created with an id of nil, which means the vacation was not saved because this did not pass the validations that were stated within the models. If we wanted to use the .new method, we would have to save the vacation. But, when we use the .save method, this will return either true or false, if the form was complete and passed the "checklist", the validations, then it would be able to be saved within the database. Else, this would be false, and not be able to be saved within the database. Knowing this helped me refractor my code even simpler. I could have used if vacation.valid? this would return either true or false, if false, then it would not save. But I made it simpler that if the vacation.save then redirect to this route, else redirected back to the '/vacations/new' route and have a flash message telling the user to fill out everything ALL requirements.