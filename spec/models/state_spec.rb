# frozen_string_literal: true

require 'rails_helper'
require 'pry'

RSpec.describe State, type: :model do
  it 'ensure that a State cannot be created without a name' do
    state = State.new(name: nil)
    expect(state).not_to be_valid
  end

  it 'expect that a State can be created given a name' do
    state = State.new(name: 'state')
    expect(state).to be_valid
  end

  it 'ensure city is properly associated to a State' do
    test_state = State.new(name: 'state')
    expect { City.create(name: 'c', state: test_state) }.to change(test_state.cities, :count).by(1)
  end
end
