class Car < ActiveRecord::Base
  validates :model, presence: true
  validates :color, presence: true
  validates :year,
    presence: true,
    numericality: { greater_than_or_equal_to: 1980 }
  validates :mileage, presence: true

  belongs_to :manufacturer
end
