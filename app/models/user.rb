# frozen_string_literal: true

class User < ApplicationRecord
  # TODO: - what happens when password and password_confirmation don't match
  # TODO: ADD PASSWORD AND PASSWORD_CONFIRMATION VALIDATION SO THEY MATCH
  # TODO: Add capitalisation for first and last name. Before_action and say for [create], and add the callback to capitalise them
  has_many :expenses
  has_secure_password
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  # TODO: - add regex
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
