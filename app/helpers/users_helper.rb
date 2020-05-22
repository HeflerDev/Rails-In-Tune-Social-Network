module UsersHelper
  def get_random_user
    user = User.find(rand(1..User.count))
    while !user
      user = User.find(rand(1..User.count))
    end
    user
  end

  def suggest_friend
    loop do
      user = get_random_user
      return user if !current_user.followees.include?(user) && current_user != user
    end
  end
end
