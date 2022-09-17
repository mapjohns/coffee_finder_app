module ApplicationHelper

    def top_bar
        if current_user
            link_to "Log out", "/logout"
        else
            link_to "Log-in", "/signin"
        end
    end
end
