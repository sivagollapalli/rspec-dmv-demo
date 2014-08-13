require 'rails_helper'

RSpec.describe User, :type => :model do
  expect_validation_in(User, {type: :presence, attributes: [:first_name, :last_name, :email]}) 
end
