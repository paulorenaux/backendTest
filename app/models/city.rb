# frozen_string_literal: true

class City < ApplicationRecord
  belongs_to :state, class_name: 'State', foreign_key: 'state_id', optional: false
  validates :name, presence: true
  after_initialize :add_to_state

  def add_to_state
    return unless valid?

    state.cities << self
  end
end
