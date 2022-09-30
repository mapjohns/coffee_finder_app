module ApplicationHelper

    def top_bar
        if current_user
            link_to "Log out", "/logout"
        else
            link_to "Log-in", "/signin"
        end
    end

    def my_profile
        if current_user
            link_to "My Profile", user_path(current_user)
        end
    end

    def time_stamp(test1)
        test1.created_at.strftime("%b %d, %Y")
    end
end
