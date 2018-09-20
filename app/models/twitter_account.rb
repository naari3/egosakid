# frozen_string_literal: true

class TwitterAccount < ApplicationRecord
  has_many :mylists, through: :twitter_account_mylists
  has_many :twitter_account_mylists
  has_one :user

  validates :twitter_user_id, presence: true, uniqueness: true
  validates :access_token, :access_secret, presence: true
  validates :authenticated, inclusion: { in: [true, false] }
end
