require 'rails_helper'

feature 'fizz buzz list generator' do
  scenario 'when user enters a valid range for creating the fizz buzz list' do
    visit fizz_buzz_path
    fill_in :start_at, with: 1
    fill_in :end_at, with: 100
    click_button 'Submit'
    expect(current_path).to eq fizz_buzz_list_path
  end

  # Not valid scenario
  scenario 'when user enters an end_at value smaller than the start_at' do
    visit fizz_buzz_path
    fill_in :start_at, with: 10
    fill_in :end_at, with: 1
    click_button 'Submit'
    expect(current_path).to eq fizz_buzz_path
    expect(page).to have_content 'Not valid inputs'
  end
end
