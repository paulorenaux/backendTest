# frozen_string_literal: true

require 'rails_helper'
require 'pry'

RSpec.describe State, type: :model do
  it 'ensure that a State cannot be created without a name' do
    state = State.new(name: nil)
    expect(state).not_to be_valid
  end

  subject { State.new(name: 'state') }
  it 'expect that a State can be created given a name' do
    expect(subject).to be_valid
  end

  it 'ensure city is properly associated to a State' do
    expect { City.create(name: 'c', state: subject) }.to change(subject.cities, :count).by(1)
  end

  context 'search for cities in state' do
    let!(:abc1) { City.create({ name: 'abc1', state: subject }) }
    let!(:abc2) { City.create({ name: 'abc2', state: subject }) }
    let!(:def1) { City.create({ name: 'def1', state: subject }) }

    it 'ensure searching for cities' do
      expect(subject.search('abc').length).to eq(2)
    end

    it 'ensure all cities are returned when no arguments are passed to `search`' do
      expect(subject.search.length).to eq(3)
    end

    it 'ensure correct citiy names are returned when searching' do
      result = subject.search 'abc'
      expect(result.length).to eq(2)
      expect(result).to include(abc1)
      expect(result).to include(abc2)
      expect(result).not_to include(def1)
    end
  end
end
