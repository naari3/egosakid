# frozen_string_literal: true

class NiconicoMylistValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if valid_niconico_mylist?(value)
  rescue StandardError => e
    record.errors[attribute] << (options[:message] || "invalid with #{e.inspect}")
  end

  private

  def valid_niconico_mylist?(id)
    Niconico::Mylist.find(id).present?
  end
end
