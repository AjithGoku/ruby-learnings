class Dictionary

    # Constructor
    def initialize
        # Creating empty hash can be created as @words = {}
        @words = Hash.new
    end

    def search_word(word)
        found_words = @words[word]
        result = "Not found"
        if(!found_words.nil?)
            result = found_words.join(",")
        end
        return "Meaning of word #{word} is " + result
    end

    def add_word(word, meanings_array)
        @words[word] = meanings_array
    end

    def update_word(word, updated_meanings_array)
        if !@words[word]
            return " The Word #{word} not found in the dictionary to update!"
        end
        @words[word] = updated_meanings_array
    end

    def delete_word(word)
        if !@words[word]
            return "The Word #{word} not found in the dictionary to delete!"
        end
        @words.delete(word)
    end
end

# Object creation
obj = Dictionary.new

# Add word
obj.add_word("care", ["safe keeping", "supervision", "custody"])
# Add word
obj.add_word("happy", ["contented", "cheerful", "joyful"])
# Search the added word
puts obj.search_word("care")
# Search the added word
puts obj.search_word("happy")
# Update word
obj.update_word("care", ["charge", "keeping", "control"])
# Search the updated word
puts obj.search_word("care")
# Delete word
obj.delete_word("care")
# Search the deleted word
puts obj.search_word("care")
