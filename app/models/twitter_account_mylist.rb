# frozen_string_literal: true

class TwitterAccountMylist < ApplicationRecord
  belongs_to :twitter_account
  belongs_to :mylist
end
