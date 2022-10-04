# README
Welcome to the Coffee Finder App. This is an app that can be used to add, find, and review coffees. Coffees can have different stores as well as listed locations. The base app does not contain any data, so the first thing to do would be to start adding coffees. You can add some of your favorites and leave reviews.

Admin accounts can be created as well with a check of the checkbox.

Github can also be utilized in order to login.

Steps for getting started:
1. Git clone the project
2. Run bundle install, then rails db:migrate and rails db:seed if you'd like to get some test data into the app.
3. rails s to start the server and then navigate to http://localhost:3000/ to get started.

Logging in with Github:
1. Create an OAuth App first by going to your Github profile and then Developer Settings > OAuth Apps > New OAuth App
2. Application name can be anything
3. Homepage URL: "http://localhost:3000"
4. Authorization callback URL: "http://localhost:3000/auth/github/callback"
5. Register application
6. Note down Client ID and then click to generate a new client secret. The ID and secret will be what you use for Key and Secret in your env file.
7. Create a .env file at the root of the project
8. Enter the following into the .env file (using your Client ID and generated secret in place of the text in the brackets)
    GITHUB_KEY=[Client ID]
    GITHUB_SECRET=[Secret]
9. Save the file
10. If done successfully, you should now be able to log in to the application with your Github account.