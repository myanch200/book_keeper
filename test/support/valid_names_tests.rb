# frozen_string_literal: true

module ValidNamesTests
  extend ActiveSupport::Concern

  included do
    test 'should not save without first_name' do
      user = User.new(first_name: nil)
      assert_not user.save
      assert_match(/blank/, user.errors[:first_name].to_s)
    end

    test 'should not save without last_name' do
      user = User.new(last_name: nil)
      assert_not user.save
      assert_match(/blank/, user.errors[:last_name].to_s)
    end
  end
end
