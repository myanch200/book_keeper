# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  include ValidNamesTests
  setup do
    @user = users(:one)
    @admin = users(:admin)
  end

  test 'role defaults to user' do
    assert_equal 'user', User.new.role
  end

  test 'user could be one of user, admin, or developer' do
    assert_equal %w[user admin developer], User.roles.keys
  end

  test 'cannot create user with invalid role' do
    assert_raises(ArgumentError) { User.new(role: 'invalid') }
  end
end
