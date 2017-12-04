module FriendsHelper
  def user_name(user_id)
    name = ''

    User.each do |user|
      if user.id.to_s == user_id
        name = user.name
      end
    end

    return name
  end
end
