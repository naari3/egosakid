# frozen_string_literal: true

create_table :users, force: :cascade do |t|
  t.references :twitter_account

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end
