class PigLatinizer
  VOWEL = ['a','o','e','i','u']
  def piglatinize(str)
    result = ''
    if VOWEL.include?(str[0])
      result = str + 'ay'
    else
      first_letter = str[0]
      result = str[1..str.length] + first_letter + 'ay'
    end
    result
  end
end
