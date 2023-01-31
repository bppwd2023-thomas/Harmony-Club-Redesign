class EventValidator < ActiveModel::Validator
  def validate(record)
    if Event.where(featured: true).length() >= 4 && record.featured == true
      record.errors.add :event, "Reached Maximum of Featured Events (4)"
    end
  end
end

class Event < ApplicationRecord
  has_one_attached :photo
  validates :title, :eventstart, :eventend, presence: true
  include ActiveModel::Validations
  validates_with EventValidator
end
