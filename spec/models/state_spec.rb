# frozen_string_literal: true

require 'rails_helper'

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
end
