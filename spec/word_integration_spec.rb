require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word path', {:type => :feature} do
  it 'processes the user entry and returns the word' do
    visit '/'
    fill_in 'word', :with => 'heart'
    click_button 'Add!'
    expect(page).to have_content 'heart'
  end
end
