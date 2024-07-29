# frozen_string_literal: true

module StatesHelper
  def self.search_cities(state, partial_city_name = nil)
    return state.cities if partial_city_name.nil?

    state.cities.select { |city| city.name.upcase.include? partial_city_name.upcase }
  end
end
