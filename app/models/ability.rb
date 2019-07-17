class Ability
  include CanCan::Ability
  include ActiveAdminRole::CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new
      can :manage, :all

    if user.super_user?
      can :manage, :all
      can :create, :all

    else
      register_role_based_abilities(user)
    end
    if user.guest_user?
      can :read, :all
  #  else
   #   register_role_based_abilities(user)
    end
  #  guest_user_roles
    # NOTE: Everyone can read the page of Permission Deny
    can :read, ActiveAdmin::Page, name: "Dashboard"
  end
end
