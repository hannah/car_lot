require 'spec_helper'

feature 'record a manufacturer', %Q{
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
} do

=begin
 Acceptance Criteria
I must specify a manufacturer name and country.
If I do not specify the required information, I am presented with errors.
If I specify the required information, the manufacturer is recorded and I am redirected to enter another new manufacturer.
=end

  scenario 'a new valid manufacturer is input' do
    manufacturer = FactoryGirl.build(:manufacturer)
    visit new_manufacturer_path
    fill_in 'Name', with: manufacturer.name
    fill_in 'Country', with: manufacturer.country

    click_on 'Create Manufacturer'
    expect(page).to have_content('Manufacturer is successfully saved')
  end

  scenario 'a new invalid manufacturer is input' do
    visit new_manufacturer_path
    click_on 'Create Manufacturer'
    expect(page).to have_content("can't be blank")
  end
end
