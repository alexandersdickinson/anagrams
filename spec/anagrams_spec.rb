require('rspec')
require('anagrams')

describe('String#anagrams') do
  it('confirms match when a string is an anagram of a given word') do
    expect('rat'.anagrams('tar')).to(eq('Tar is an anagram of rat.'))
  end
  
  it('confirms mismatch when a string is not an anagram of a given word') do
    expect('rat'.anagrams('lion')).to(eq('Lion is not an anagram of rat.'))
  end
end