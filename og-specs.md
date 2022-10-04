# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project 
    - Using Ruby on Rails for this project

- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
    - Includes multiple has_many relationships, such as store has_many coffees, coffee has_many reviews, and user has_many reviews.

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) 
    - Done, coffee belongs_to a store or review belongs to user and coffee.

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) 
    - DONE, User has many coffees through reviews. Coffee has many users through reviews.

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) 
    - DONE, User has many coffees through reviews. Coffee has many users through reviews.

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) 
    - Done, reviews can have a rating and content be submitted by the app's user.

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) 
    - Various validations used, such as presence and unique.

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) 
    - Done, scopes added on the Coffee model for recently added and highest rated.

- [x] Include signup
    - Done, a user can sign-up

- [x] Include login
    - Done, a user can log in

- [x] Include logout
    - Done, a user can log out
    
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    - User can use Github in order to login

- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    - Done, have a nested route for coffees under a specific store (stores/1/coffees) or locations under a specific store (stores/1/locations)

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    - Done, a coffee can be added for a store (stores/1/coffees/new). Have that for location (stores/1/locations/new) and for coffees as well (coffees/5/reviews/new).

- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    - Error display on forms has been implemented such as coffees (/coffees/new), user creation (/signup), and locations (/stores/1/locations/new).

Confirm:
- [x] The application is pretty DRY
    -Confirmed to be pretty DRY.

- [x] Limited logic in controllers
    -Limited logic used in controllers.

- [x] Views use helper methods if appropriate
    - Yes, helpers are utilized in views, such as in the coffee index view (i.e. coffee_index_wording)

- [x] Views use partials if appropriate
    - Yes, they do use partials, such as in the coffee edit form