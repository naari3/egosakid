# frozen_string_literal: true

class Mylist < ApplicationRecord
  has_many :users, through: :user_mylists
  has_many :user_mylists

  validates :niconico_mylist_id, presence: true, uniqueness: true, niconico_mylist: true

  def niconico_mylist
    @niconico_mylist ||= Niconico::Mylist.find(niconico_mylist_id)
  end

  def item_links
    niconico_mylist.map(&:link)
  end

  def item_ids
    item_links.map { |link| link.match(%r{sm\d+})[0] }
  end
end
