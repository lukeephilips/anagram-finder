require('rspec')
require ('pry')
require('anagram')

describe('String#anagram_test?') do

  it('takes two user inputs and converts it to a lowercase sorted array') do
    expect('Cat'.anagram_test?('tac')).to(eq(true))
  end

end

describe('String#anagram_display') do
  it('Runs the anagram_test on two words and returns a string') do
    expect('Cat'.anagram_display('tAc')).to(eq('tAc is an anagram of Cat'))
  end

  it('Runs the anagram_test on 4 words and returns a string') do
    expect('Cat'.anagram_display('tAc doG bug act')).to(eq('tAc act is an anagram of Cat'))
  end
  it('Runs the anagram_test on word that is not in the input and returns a mean eror message') do
    expect('Cat'.anagram_display('bug')).to(eq('Sorry Charlie'))
  end

end
