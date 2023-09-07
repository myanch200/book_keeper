# frozen_string_literal: true

module ValidNamesTests
  extend ActiveSupport::Concern

  included do
    test 'should not save without first_name' do
      user = User.new(first_name: nil)
      assert_not user.save
    end

    test 'should not save without last_name' do
      user = User.new(last_name: nil)
      assert_not user.save
    end
  end
end
