require 'rails_helper'

RSpec.describe User, :type => :model do
  expect_presence_validation_for({attributes: [:first_name, :last_name, :email], message: "Profile info can't be blank" }) 
  expect_unique_validation_for({attributes: [:email], message: "Email should be unique"})
  expect_length_validation_for({ attributes: [:first_name, :last_name], min: 2, max: 6, message: "Between 2 and 6"})
  expect_numeric_validation_for({attributes: [:age], only_integer: true})
end
