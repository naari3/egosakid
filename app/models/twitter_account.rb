# frozen_string_literal: true

class TwitterAccount < ApplicationRecord
  has_one :user

  validates :twitter_user_id, presence: true, uniqueness: true
  validates :access_token, :access_secret, presence: true
  validates :authenticated, inclusion: { in: [true, false] }

  def self.find_or_create_from_auth(auth)
    twitter_account = find_or_create_by(twitter_user_id: auth.uid) do |twitter_account|
      twitter_account.access_token = auth.credentials.token
      twitter_account.access_secret = auth.credentials.secret
      twitter_account.authenticated = true
    end
    twitter_account.update_from_auth(auth) if twitter_account.access_token != auth.credentials.token
    twitter_account
  end

  def update_from_auth(auth)
    update(access_token: auth.credentials.token,
           access_secret: auth.credentials.secret,
           authenticated: true)
  end

  def search_sm_tweet(id)
    twitter_client.search("##{id} -RT")
  end

  private

  def twitter_client
    @twitter_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET_KEY']
      config.access_token        = access_token
      config.access_token_secret = access_secret
    end
  end
end
