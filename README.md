- Pre-Activity Notes
    - Strings are objects
        -can manipulate with helper methods (predefined methods that reduce amount of code that needs to be written)
        - '' vs "" : '' does not allow for interpolation
    - Methods for Strings
        - .size - length of string (characters)
        -[#] - character at specified position
        -.index('character') - find first index of a character
        - Find 3 characters starting with the second character (index 1):
            my_string[1,3]
            my_string.slice(1,3) 
        -.capitalize - upcase first character
        -.downcase - downcase all characters
        -.center(#) - center by specified number of spaces
            "hello".center(9) 
                => "  hello  "
        -.strip - remove spaces
            "  hello  ".strip
                => "hello"
        -.split() - split string by specified spacer 
            " " for spaces
            "" for seperating characters 
        -.gsub() -replace on character with another
            "noob".gsub("o", "0")
                =>"n00b"
                    - replaces "o" with "0"
            "Ruby really rocks".gsub(/[aieou]/,'')
                =>"Rby rlly rcks"
                    - replaces vowels with nothing
        -usually methods return a new string. Methods ending with ! modify the original string itself. 

- Instructions
    1. X Implement LoglineParser#message method to return a log line's message: 
         LogLineParser.new('[Error]: Invalid operation').message
            => "Invalid operation"
        - X any leading or trailing white space should be removed
    2. Implement LogLineParser#log_level method to return a log line's level which should be returned in lowercase 
         LoglineParser.new('[ERROR]: Invalid operation).log_level
            => "error"
    3. Implement LogLineParser#reformat that reformats the log line, putting message first and log level after it in parentheses
         LogLineParser.new('[INFO]: Operation completed').reformat
            => "Operation completed (info)"

