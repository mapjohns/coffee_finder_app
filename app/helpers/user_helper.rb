module UserHelper
    def admin
        current_user.admin
    end
end