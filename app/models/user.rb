class User < ActiveRecord::Base
  
  attr_accessor :age

  validates :first_name, :last_name, :email, presence: { message: "Profile info can't be blank"}
  validates :email, uniqueness: { message: "Email should be unique"}
  validates :first_name, :last_name, length: { message: "Between 2 and 6", minimum: 2, maximum: 6 }
  validates_numericality_of :age, only_integer: true
  validates_numericality_of :age
end
