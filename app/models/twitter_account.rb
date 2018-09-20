# frozen_string_literal: true

class TwitterAccount < ApplicationRecord
  has_many :mylists, through: :twitter_account_mylists
  has_many :twitter_account_mylists

  validates :twitter_user_id, presence: true, uniqueness: true
end
