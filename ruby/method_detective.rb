# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".chomp
# => “InVeStIgAtIoN”


"zom".gsub('o','oo')
#or
"zom".insert(1, 'o')
# => “zoom”


"enhance".center(15)
# => "    enhance    "


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


"the usual" << " suspects"
#=> "the usual suspects"


" suspects".insert(0, "The usual")
# => "the usual suspects"


"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"


"The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"


"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"


 "z".ord
# => 122 

# (What is the significance of the number 122 in relation to the character z?)
#122 is an integer representing the orginal number of z, which basically means that there's
#a list somewhere containing things (I'm guessing characters) and z is 122 on that list.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4