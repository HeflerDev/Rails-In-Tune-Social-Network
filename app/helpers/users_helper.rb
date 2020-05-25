module UsersHelper
  def random_user
    user = User.find(rand(1..User.count))
    user = User.find(rand(1..User.count)) until user
    user
  end

  def suggest_friend
    loop do
      user = random_user
      return user if !current_user.followees.include?(user) && current_user != user
    end
  end
end
