
gem install corneal then,
corneal new "name"

How to add to github

git init
git remote add origin https://github.com/martinezjf2/new_app.git
$ git add .
# Adds the file to your local repository and stages it for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
$ git commit -m "Add existing file"
# Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
$ git push origin your-branch
# Pushes the changes in your local repository up to the remote repository you specified as the origin
git add .
git commit -m " "
git oush


Creating Databases

rake db:create_migration NAME=create_users
rake db:migrate
rake db:rollback SINATRA_ENV=development
rake db:migrate SINATRA_ENV=development


For any information about the sinatra-flash gem, please visit https://github.com/SFEley/sinatra-flash



Plan a Vacation
Models
-Users has_many :parks
-Parks/Vacations has_many :shows
-Shows belongs_to :parks/vacations

must have a sign up, sign in, and a sign out
validations such as uniqueness of the user login atrributes(email and password)
Perform full CRUD actions which belongs to the USER
Validate user input so bad data cannot be persisted to the database

 #what is the difference between re-directing and rendering?



#<%= flash[:message] %>

 #     <p class="links"><a href="#" class="logout">Log Out</a></p>

 Put this under <div class="wrapper">

    #     <p class="links"><a href="#"><My Vacations</a></p>
    #     <p class="links"><a href="#"><New Vacation</a></p>
    #     <p class="links"><a href="#"><All Vacations</a></p>
    #     <p class="links"><a href="#"><All Users</a></p>
        
        #put in this div class for the nav bar, but it shows several "a href" links through the paragraph in the home welcome1.erb



Need Help On:

<!-- -want to make the login/submit button a little bigger, -->
-says NoMethodName for .name in show.erb trying to display the vacations
<!-- -need to add "first_name" and "last_name" for create_table "vacations" and later call it within the show.erb vacation.name and in the welcome.erb, say Welcome ..@user.first_name instead of username and when i want to display "All Users" then display the name of the user instead of the username-->


-want to customize that the login and the sign up request have different pictures

-in show.erb for vacations,i want to increase the font-size for the "Edit Vacation" a href link, also, i want to display the date instead of 2020-04-14, i want to display it like April 14, 2020. What can i do to do that?

-for new vacation, wnat to increase the font size within the desription box

-ask for the license, how do i do that?

<!-- -when logging in, undefined method got 'authenticate' i guess i fixed it-->
-login.erb i want to show the tab bar(Warning), only when there is an error with the password.
-when i type in a wrong username to the login, it shows me a NoMethodError. how can i fix this?