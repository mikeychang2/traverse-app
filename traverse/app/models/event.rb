class Event < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_one :place
end
