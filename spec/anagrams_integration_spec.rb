require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagrams path', {:type => :feature}) do
  it('processes user words and possible anagrams and tells whether they are anagrams or not') do
    visit('/')
    fill_in('master', :with => 'rat')
    fill_in('comp1', :with => 'tar')
    fill_in('comp2', :with => 'art')
    fill_in('comp3', :with => 'woolly mammoth')
    click_button('Submit')
    expect(page).to(have_content('Tar is an anagram of rat.'))
    expect(page).to(have_content('Art is an anagram of rat.'))
    expect(page).to(have_content('Woolly mammoth is not an anagram of rat.'))
  end
end