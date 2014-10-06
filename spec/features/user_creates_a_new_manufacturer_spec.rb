require 'rails_helper'
feature "User creates a new manufacturer" do
  scenario "sucessfully" do
    visit new_manufacturer_path
    fill_in 'Name', with: 'Lambourghini'
    select 'Italy', from: 'Country'
    click_button 'Create Manufacturer'

    expect(page).to have_content 'Success'
  end
end
