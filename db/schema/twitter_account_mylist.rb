# frozen_string_literal: true

create_table :twitter_account_mylists, force: :cascade do |t|
  t.references :twitter_account
  t.references :mylist

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end
