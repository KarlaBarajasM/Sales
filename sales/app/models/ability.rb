class Ability
  include CanCan::Ability

  def initialize(user)
if user

if user.kind == 'salesman'
  can :access, :rails_admin
  can :dashboard
  can :manage, Client, user_is: user.is
  can :manage, Sale, user_is: user.is
  can :read, Product, status: :active
  can :read, Discount, status: :active
  can :read, Comission, user_is: user.is
  con :manage, ProductQuantity, user_is: user.is
  can :manage, Address, user_is: user.is
elsif user.kind == 'manager'
  can :manage, :all


    end
end

  end
end
