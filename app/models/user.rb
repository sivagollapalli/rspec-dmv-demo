class User < ActiveRecord::Base

  validates :first_name, :last_name, :email, presence: { message: "Profile info can't be blank"}
  validates :email, uniqueness: true
end
