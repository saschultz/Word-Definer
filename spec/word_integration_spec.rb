require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word path', {:type => :feature} do
  it 'processes the user entry and returns the word' do
    visit '/'
    fill_in 'word', :with => 'heart'
    click_button 'Add!'
    click_link 'heart'
    fill_in 'definition', :with => 'a hollow muscular organ that pumps the blood through the circulatory system by rhythmic contraction and dilation'
    click_button 'Add!'
    expect(page).to have_content 'a hollow muscular organ that pumps the blood through the circulatory system by rhythmic contraction and dilation'
  end
end
