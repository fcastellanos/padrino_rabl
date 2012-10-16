class User < ActiveRecord::Base
  attr_reader :name

  validates_presence_of :name

  has_many :tasks

  def initialize(name)
    @name=name
  end

  def self.authenticate(a, b)
    return User.new('john')
  end
end
