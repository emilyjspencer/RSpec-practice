

class RomanNumeral

  def convert(number)
    if number == 1
        return "I"
    elsif number == 2
        return "II"
    elsif number == 3
        return 'III'
    elsif number == 4
        return 'IV'
    elsif number == 5
        return 'V'
    elsif number == 6
        return 'VI'
    elsif number == 7
        return 'VII'
    elsif number == 8
        return 'VIII'
    elsif number == 9
        return 'IX'
    elsif number == 10
        return 'X'
    else 
        return nil
    end 
      
  end 

end

roman_numeral = RomanNumeral.new
puts roman_numeral.convert(5)
roman_numeral2 = RomanNumeral.new
puts roman_numeral2.convert(100)
roman_numeral3 = RomanNumeral.new
puts roman_numeral3.convert(3)