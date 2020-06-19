class BookingPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.all # returns flats with coordinates
    end
  end
# done by the scope resolve
  # def index?
  #   true
  # end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.flat.user == user
  end

  def destroy?
    record.flat.user == user
  end


end

