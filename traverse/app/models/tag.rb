class Tag < ActiveRecord::Base
  belongs_to :event
  belongs_to :trip
end
