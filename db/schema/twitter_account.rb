# frozen_string_literal: true

create_table :twitter_accounts, force: :cascade do |t|
  t.bigint :twitter_user_id
  t.string :access_token
  t.string :access_secret
  t.boolean :authenticated

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end

