# frozen_string_literal: true

FactoryBot.define do
  factory :twitter_account do
    twitter_user_id { '' }
    access_token { 'MyString' }
    access_secret { 'MyString' }
    authenticated { false }
  end
end
