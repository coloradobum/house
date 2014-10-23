class RoomPolicy < ApplicationPolicy

  class Scope < Scope
    attr_reader:user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.present?
        scope.all
      else
        scope.where(:private => false)
      end
    end
  end

  def index?
    true
  end

  def edit?
    create?
  end

  def create?
    user.present? && user.role?(0)
  end
end
