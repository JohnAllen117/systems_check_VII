require 'rails_helper'
feature "User creates a new car" do
  scenario "sucessfully" do
    manufacturer = FactoryGirl.create(:manufacturer)
    visit new_car_path
    fill_in 'Color', with: 'Pink'
    select '1980', from: 'Year'
    select "#{manufacturer.name}", from: 'Manufacturer'
    fill_in 'Mileage', with: 80000

    click_button "Create Car"
    expect(page).to have_content 'Success'
  end
end
