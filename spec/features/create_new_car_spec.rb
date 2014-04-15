require 'spec_helper'

feature 'record a car', %Q{
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot
} do

=begin
  Acceptance Criteria
I must specify the color, year, and mileage of the car.
Only years from 1980 and above can be specified.
I can optionally specify a description of the car.
If I enter all of the required information in the required formats, the car is recorded.
If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
Upon successfully creating a car, I am redirected so that I can create another car.
=end

  scenario 'a valid new car is input' do
    car = FactoryGirl.build(:car)
    visit new_car_path
    fill_in 'Model', with: car.model
    fill_in 'Color', with: car.color
    select car.year, from: 'Year'
    fill_in 'Mileage', with: car.mileage

    click_on 'Create Car'
    expect(page).to have_content('Car is successfully saved')
  end

  scenario 'manufacturer is selected for a car' do
    manufacturer = FactoryGirl.create(:manufacturer)
    car = FactoryGirl.build(:car, manufacturer: nil)

    visit new_car_path
    select manufacturer.name, from: 'Manufacturer'
    fill_in 'Model', with: car.model
    fill_in 'Color', with: car.color
    select car.year, from: 'Year'
    fill_in 'Mileage', with: car.mileage
    click_on 'Create Car'

    expect(Car.first.manufacturer).to eq manufacturer
    expect(page).to have_content('Car is successfully saved')
  end

  scenario 'an invalid car is input' do
    visit new_car_path
    click_on 'Create Car'

    expect(page).to have_content("can't be blank")
  end
end
