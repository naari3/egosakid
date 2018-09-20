# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :twitter_account
end
