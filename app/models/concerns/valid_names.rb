# frozen_string_literal: true

module ValidNames
  extend ActiveSupport::Concern

  included do
    validates :first_name, :last_name, presence: true
  end
end
