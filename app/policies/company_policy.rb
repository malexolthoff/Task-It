class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
    def new?
      return true
    end
  end
end
