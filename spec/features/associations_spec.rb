require 'spec_helper'

feature 'associate a car and manufacturer', %Q{
  As a car salesperson
  I want to record a car listing's manufacturer
  So that I can keep track of its manufacturer
} do

  scenario 'manufacturer can be selected for a car' do
    manufacturer = FactoryGirl.create(:manufacturer)
    car = FactoryGirl.build(:car, manufacturer: nil)
    visit new_car_path
    select manufacturer.name, from: 'Manufacturer'
    fill_in 'Model', with: car.model
    fill_in 'Color', with: car.color
    select car.year, from: 'Year'
    fill_in 'Mileage', with: car.mileage

    click_on 'Create Car'
    expect(page).to have_content('Car is successfully saved')
  end

end
