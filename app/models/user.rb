# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :twitter_account

  validates :twitter_account_id, presence: true, uniqueness: true
end
