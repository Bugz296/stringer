require "stringer/version"
module Stringer
    def self.spacify *strings
        string = ""
        strings.each do |s|
            string += " " + s
        end
        string.slice!(0)
        string
    end

    def self.minify string, max_length
        if(string.length > max_length)
            new_string = ''
            (0...max_length).each do |char|
                new_string += string[char]
            end
            new_string += "..."
        else
            string
        end
    end

    def self.replacify original_string, string_to_replace, string
        original_string.gsub! string_to_replace,string
    end  
    def self.tokenize string
        string.split(" ")
    end
    def self.removify string, removed
        string.gsub(" " + removed, "")
    end
end