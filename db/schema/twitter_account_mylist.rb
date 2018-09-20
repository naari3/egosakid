# frozen_string_literal: true

create_table :twitter_account_mylists, force: :cascade do |t|
  t.reference :twitter_account
  t.reference :mylist

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end
