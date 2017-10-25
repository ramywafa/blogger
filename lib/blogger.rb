require "blogger/engine"

module Blogger
  mattr_accessor :user_class

  #override the getter for user_class
  def self.author_class
    @@user_class.constantize
  end
end
