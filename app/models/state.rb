# frozen_string_literal: true

class State < ApplicationRecord
  has_many :cities, class_name: 'City', dependent: :destroy
  validates :name, presence: true

  def search(partial_city_name = nil)
    return cities if partial_city_name.nil?

    cities.select { |city| city.name.include? partial_city_name }
  end
end
