# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @admin = users(:admin)
  end

  test 'admin field should be false by default' do
    user = User.new
    assert_not user.admin?
  end

  test 'admin could be set to true' do
    @user.update(admin: true)
    assert @user.reload.admin?
  end
end
