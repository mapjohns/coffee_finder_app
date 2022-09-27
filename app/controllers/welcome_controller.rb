class WelcomeController < ApplicationController
    skip_before_action :logged_in?, only: [:home]

    def home
        render layout: "welcome"
    end

end