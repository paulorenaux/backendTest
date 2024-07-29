# frozen_string_literal: true

class RootController < ApplicationController
  include StatesHelper

  def index
    @states = State.all
  end

  def search
    @state_name = params.require(:state_name)
    @partial_city_name = params.require(:city_name)
    state = State.all.find_by(name: @state_name)
    @cities = StatesHelper.search_cities(state, @partial_city_name)
  end
end
