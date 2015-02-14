class Tag < ActiveRecord::Base
  # belongs_to :event
  has_and_belongs_to_many :events
  belongs_to :trip
end
