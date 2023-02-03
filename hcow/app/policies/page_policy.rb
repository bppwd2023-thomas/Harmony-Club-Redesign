class PagePolicy < ApplicationPolicy
 attr_reader :user, :record

 def initialize(user, record)
   @user = user
   @record = record
 end

 def index?
  if @user.role == "developer"
   true
  else
   false
  end
 end

 def show?
  true
 end

 def create?
  if @user.role == "developer"
   true
  else
   false
  end
 end

 def new?
   create?
 end

 def update?
  if @user.role == "developer"
   true
  else
   false
  end
 end

 def edit?
   update?
 end

 def destroy?
  if @user.role == "developer"
   true
  else
   false
  end
 end

 class Scope
   def initialize(user, scope)
     @user = user
     @scope = scope
   end

   def resolve
     raise NotImplementedError, "You must define #resolve in #{self.class}"
   end

   private

   attr_reader :user, :scope
 end
end