require 'spec_helper'

describe Car do
  it {should validate_presence_of(:model)}
  it {should validate_presence_of(:color)}
  it {should validate_presence_of(:mileage)}

  it { should have_valid(:year).when(1980, 2014, 2043) }
  it { should_not have_valid(:year).when(nil, 1979, 1700, 0) }
end
