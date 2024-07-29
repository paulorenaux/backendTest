# frozen_string_literal: true

require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state = states(:one)
  end

  test 'should get index' do
    get states_url
    assert_response :success
  end
end
