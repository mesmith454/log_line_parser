class LoglineParser
    def initialize(string)
        @string = string
    end

    def message
        @string.split(':').last.strip
    end

    def log_level
        start_slice = @string.index('[')
        end_slice = @string.index(']')
        
        @string[start_slice + 1 .. end_slice -1].downcase
    end

    def reformat
        "#{message} (#{log_level})"
    end
end

p LoglineParser.new('[Error]: Invalid operation').message
p LoglineParser.new('[ERROR]: Invalid operation').log_level
p LoglineParser.new('[ERROR]: Invalid operation').reformat