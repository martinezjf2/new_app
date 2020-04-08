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





