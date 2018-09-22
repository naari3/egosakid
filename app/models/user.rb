# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :twitter_account

  validates :twitter_account_id, presence: true, uniqueness: true

  def self.find_or_create_from_auth(auth)
    find_or_create_by(twitter_account: TwitterAccount.find_or_create_from_auth(auth))
  end
end
