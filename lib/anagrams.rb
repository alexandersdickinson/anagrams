class String
  def anagrams(anagram)
    comp1 = self.split('').sort()
    comp2 = anagram.split('').sort()
    if comp1 == comp2
      return "#{anagram.capitalize()} is an anagram of #{self}."
    else
      return "#{anagram.capitalize()} is not an anagram of #{self}."
    end
  end
end