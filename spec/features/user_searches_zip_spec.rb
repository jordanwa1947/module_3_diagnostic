require 'rails_helper'

describe 'User Searches Zip Code' do
  it 'should display a sorted list of stations within 6 miles' do

    visit '/'
    fill_in 'q', with: '80203'
    click_button 'Locate'

    expect(current_path).to eq('/search')
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
