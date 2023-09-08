# frozen_string_literal: true

class User < ApplicationRecord
  include ValidNames
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  enum role: { user: 'user', admin: 'admin', developer: 'developer' }
end
