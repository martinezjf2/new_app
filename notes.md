How to add to github

git init
git remote add origin https://github.com/martinezjf2/new_app.git
$ git add .
# Adds the file to your local repository and stages it for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
$ git commit -m "Add existing file"
# Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
$ git push origin your-branch
# Pushes the changes in your local repository up to the remote repository you specified as the origin


Creating Databases

rake db:create_migration NAME=create_users
rake db:migrate
rake db:rollback SINATRA_ENV=development
rake db:migrate SINATRA_ENV=development





To-Do List

call 911 to report the car plate missing 3 way call with brother-in-law
make karla work schedule to know who picks/drops her off
call kia finance to see what i can do within the monthly payments for the car
continue doing the project