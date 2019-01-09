# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :friendships
  has_many :friends, through: :friendships
  has_one_attached :avatar
end
