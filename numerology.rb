def bday_meaning(bday)
# Add all numbers together
    bdaynum = bday[0].to_i + bday[1].to_i + bday[2].to_i + bday[3].to_i + bday[4].to_i + bday[5].to_i + bday[6].to_i + bday[7].to_i

    # Convert number to a string
    bdaynum = bdaynum.to_s

    # Add all numbers together
    bdaynum = bdaynum[0].to_i + bdaynum[1].to_i

    # If number is greater than 9, reduce again
    if bdaynum > 9
        bdaynum = bdaynum[0].to_i + bdaynum[1].to_i
    end

    return bdaynum
end

# Numerology meaning
def get_message(birth_path_num)
    case bdaynum
    when 1
        puts "Your numerology number is #{bdaynum}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2
        puts "Your numerology number is #{bdaynum}.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        puts "Your numerology number is #{bdaynum}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        puts "Your numerology number is #{bdaynum}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        puts "Your numerology number is #{bdaynum}.\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        puts "Your numerology number is #{bdaynum}.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        puts "Your numerology number is #{bdaynum}.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
        puts "Your numerology number is #{bdaynum}.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        puts "Your numerology number is #{bdaynum}.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
    puts "Uh oh! Your birth path number is not 1-9!"
    end
end

# Ask user for bday
puts "What is your birthdate? (MMDDYYYY)"

# Assign input to variable
bday = gets

# Call number analysis
birth_path_num = bday_meaning(bday)

# Get meaning
message = get_message(birth_path_num)

puts message
