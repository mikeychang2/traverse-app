class Tag < ActiveRecord::Base
  # belongs_to :event
  # has_and_belongs_to_many :events
  has_many :event_tags
  has_many :events, through: :event_tags
  # belongs_to :trip

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
