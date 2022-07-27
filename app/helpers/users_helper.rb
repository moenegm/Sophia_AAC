module UsersHelper

    def check_avatar(user)
        if user.avatar.present?
            link_to image_tag(current_user.avatar, class:"avatar mb-3", radius: 0)
        else
            link_to image_tag("default-avatar.jpg", class:"mb-3 avatar justify-items-center", radius: 0)
        end
    end

    
end