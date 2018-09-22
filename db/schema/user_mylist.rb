# frozen_string_literal: true

create_table :user_mylists, force: :cascade do |t|
  t.references :user
  t.references :mylist

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end
