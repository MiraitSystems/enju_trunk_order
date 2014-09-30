class Ability
  def initialize_circulation(user, ip_address = nil)
    case user.try(:role).try(:name)
    when 'Administrator'
      can :manage, [
        Order,
        OrderList,
        Payment,
        UseLicense,
      ]
    when 'Librarian'
      can :manage, [
        Order,
        OrderList,
        Payment,
        UseLicense,
      ]
    end
  end
end
