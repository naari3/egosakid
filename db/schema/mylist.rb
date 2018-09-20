# frozen_string_literal: true

create_table :mylists, force: :cascade do |t|
  t.bigint :niconico_mylist_id, null: false, index: true

  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end
