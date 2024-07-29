# frozen_string_literal: true

class State < ApplicationRecord
  has_many :cities, class_name: 'City', dependent: :destroy
  validates :name, presence: true
end
