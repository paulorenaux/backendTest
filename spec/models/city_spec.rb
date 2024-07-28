# frozen_string_literal: true

require 'rails_helper'

RSpec.describe City, type: :model do
  it 'ensure a City cannot be created without a state' do
    expect(City.new(name: 'City', state: nil)).not_to be_valid
  end

  it 'ensure that a City cannot be created without a name' do
    s = State.new(name: 'state')
    expect(City.new(name: nil, state: s)).not_to be_valid
  end

  it 'ensure that a City can be created with a name and existing state' do
    s = State.new(name: 'state')
    city = City.new(name: 'city', state: s)
    expect(city).to be_valid
  end
end
