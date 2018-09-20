# frozen_string_literal: true

class TwitterAccount < ApplicationRecord
  has_many :mylists, through: :twitter_account_mylists
  has_many :twitter_account_mylists
end
