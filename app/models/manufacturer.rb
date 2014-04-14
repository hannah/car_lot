class Manufacturer < ActiveRecord::Base
  validates :country, presence: true
  validates :name, presence: true

  has_many :cars, dependent: :destroy
end
