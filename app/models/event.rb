class Event < ApplicationRecord
  belongs_to :customer, optional: true
end
