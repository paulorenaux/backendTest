class City < ApplicationRecord
    belongs_to :state, class_name: 'State', foreign_key: 'state_id', inverse_of: :cities
end
