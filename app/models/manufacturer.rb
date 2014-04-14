class Manufacturer < ActiveRecord::Base
  validates :country, presence: true
  validates :name, presence: true
end
