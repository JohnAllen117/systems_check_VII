require 'rails_helper'
feature "User creates a new manufacturer" do
  scenario "sucessfully" do
    visit_new_manufacturer_path
    fill_in 'Name', with: 'Lambourghini'
    fill_in 'Country', with: 'Italy'
    click 'Submit'

    expect(page).to have_content 'Success'
  end
end
