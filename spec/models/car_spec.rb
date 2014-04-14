require 'spec_helper'

describe Car do
  it {should validate_presence_of(:model)}
  it {should validate_presence_of(:make)}
  it {should validate_presence_of(:color)}
  it {should validate_presence_of(:year)}
  it {should validate_presence_of(:mileage)}

  it {should ensure_inclusion_of(:year).in_array(Car::YEARS)}
end
