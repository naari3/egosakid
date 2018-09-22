# frozen_string_literal: true

class UserMylist < ApplicationRecord
  belongs_to :user
  belongs_to :mylist
end
