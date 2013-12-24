class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      else
        can :read, :all

        # cannot DESTROY or UPDATE other USERS!
        can [:new, :create, :show], User
        can [:edit, :update, :destroy], User do |current_user|
          current_user.id == user.id
        end

        can [:new, :create, :show], Photo
        can [:edit, :update, :destroy], Photo do |photo|
          photo.user == user
        end

        can [:new, :create, :show], Memory
        can [:edit, :update, :destroy], Memory do |memory|
          memory.user == user
        end
      end
  end

end
