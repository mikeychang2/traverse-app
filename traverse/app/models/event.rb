class Event < ActiveRecord::Base
  # has_many :tags, dependent: :destroy
  # has_and_belongs_to_many :tags
  has_many :event_tags
  has_many :tags, through: :event_tags
  has_many :photos, dependent: :destroy
  has_one :place

  default_scope {order('date DESC')}
end
