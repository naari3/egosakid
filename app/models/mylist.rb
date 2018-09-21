# frozen_string_literal: true

class Mylist < ApplicationRecord
  has_many :twitter_accounts, through: :twitter_account_mylists
  has_many :twitter_account_mylists

  validates :niconico_mylist_id, presence: true, uniqueness: true, niconico_mylist: true

  def niconico_mylist
    @niconico_mylist ||= Niconico::Mylist.find(niconico_mylist_id)
  end
end
