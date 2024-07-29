# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatesHelper, type: :helper do
  subject(:result) { State.create({ name: 'state' }) }
  let!(:abc1) { City.create({ name: 'abc1', state: subject }) }
  let!(:abc2) { City.create({ name: 'abc2', state: subject }) }
  let!(:def1) { City.create({ name: 'def1', state: subject }) }

  it 'ensure searching for cities' do
    # expect(subject.search('abc').length).to eq(2)
    expect(StatesHelper.search_cities(subject, 'abc').length).to eq(2)
  end

  it 'ensure all cities are returned when no arguments are passed to `search`' do
    expect(StatesHelper.search_cities(subject).length).to eq(3)
  end

  it 'ensure correct citiy names are returned when searching' do
    result = StatesHelper.search_cities(subject, 'abc')
    expect(result.length).to eq(2)
    expect(result).to include(abc1)
    expect(result).to include(abc2)
    expect(result).not_to include(def1)
  end
end