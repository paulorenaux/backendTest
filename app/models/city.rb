class City < ApplicationRecord
    belongs_to :state, class_name: 'State', foreign_key: 'state_id', inverse_of: :cities, optional: false
    validates :name, presence: true
end
