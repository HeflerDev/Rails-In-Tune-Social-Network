module UsersHelper
  def get_random_user
    user = nil
    while !user
      user = User.find(rand(1..User.count))
    end
    user
  end
end
