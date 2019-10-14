class Message < ApplicationRecord
  attr_accessor :name, :email, :message, :created_at, :updated_at
  validates :name, :email, :message, presence: true
end
