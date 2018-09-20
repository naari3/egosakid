# frozen_string_literal: true

create_table :twitter_accounts, force: :cascade do |t|
  t.bigint :twitter_user_id, null: false, index: { unique: true }
  t.string :access_token, null: false
  t.string :access_secret, null: false
  t.boolean :authenticated, null: false

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end
