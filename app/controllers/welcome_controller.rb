class WelcomeController < ApplicationController
    
    def home
        render layout: "welcome"
    end

end