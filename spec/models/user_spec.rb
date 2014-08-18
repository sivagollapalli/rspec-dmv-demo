require 'rails_helper'

RSpec.describe User, :type => :model do
  expect_presence_validation_for({attributes: [:first_name, :last_name, :email], message: "Profile info can't be blank" }) 
end
