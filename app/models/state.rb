# frozen_string_literal: true

class State < ApplicationRecord
  has_many :cities, class_name: 'City', foreign_key: 'state_id', inverse_of: :state, dependent: :destroy
end
