# frozen_string_literal: true

require 'rails_helper'

RSpec.describe City, type: :model do
  # let(:mock_state) {instance_double(State, name: 'Mock State')}

  # subject { City.new(name: 'city', state: mock_state) }
  # it 'ensure a City cannot be created without a state' do
  #   expect(subject).to be_valid
  # end

  it 'ensure a City cannot be created without a state' do
    expect(City.new(name: 'City', state_id: 0)).not_to be_valid
  end

  it 'ensure that a City cannot be created without a name' do
    expect(City.new(name: nil, state_id: 0)).not_to be_valid
  end

  it 'ensure that a City can be created with a name and existing state' do
    s = State.new(name: 'state')
    city = City.new(name: 'city', state: s)
    expect(city).to be_valid
  end
end
