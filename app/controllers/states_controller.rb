# frozen_string_literal: true

class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end
end
