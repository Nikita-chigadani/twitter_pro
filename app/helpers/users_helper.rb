module UsersHelper
    def user_gravatar(user)
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag(gravatar_url, alt: user.name)
    end
    def avatar_profile_link(user, image_options={}, html_options={})
      avatar_url = nil
      unless user.nil?
        avatar_url = user.avatar? ? user.avatar.url(:thumb) : nil
        link_to(image_tag(avatar_url, image_options), profile_path(user.profile_name), html_options)
      end
    end
end