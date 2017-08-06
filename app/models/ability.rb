class Ability
  include CanCan::Ability

  def initialize(user)
    binding.pry
    user ||= User.new
    can :manage, :all if user.admin?
    can :read, :all if user.confirmed?
  end
end
