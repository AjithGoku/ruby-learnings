class Dictionary

    # Constructor
    def initialize
        # Creating empty hash can be created as @words = {}
        @words = Hash.new
    end

    def search_word()
        puts "Enter the word you want to seek meaning"
        word = gets.chomp.to_s
        found_words = @words[word]
        result = "not found in this dictionary"
        if(!found_words.nil?)
            result = found_words.join(",")
        end
        puts "Meaning of word '#{word}' is " + result
    end

    def add_word()
        puts "Enter the word to add meaning"
        word = gets.chomp.to_s
        puts "Enter the meanings in comma separated ex: Aji,Viji,Sri"
        meanings_array = []
        meanings = gets.chomp
        meanings_array = meanings.split(',')
        @words[word] = meanings_array
        puts "The word '#{word}' added to the dictionary with meanings!"
    end

    def update_word()
        puts "Enter the word to update meanings"
        word = gets.chomp.to_s
        if !@words[word]
            return " The Word '#{word}' not found in the dictionary to update!"
        end
        puts "Enter the updated meanings in comma separated ex: Aji,Viji,Sri"
        meanings_array = []
        meanings = gets.chomp
        updated_meanings_array = meanings.split(',')
        @words[word] = updated_meanings_array
        puts "The word '#{word}' updated to the dictionary!"
    end

    def delete_word()
        puts "Enter the word to delete from dictionary"
        word = gets.chomp.to_s
        if !@words[word]
            return "The Word '#{word}' not found in the dictionary to delete!"
        end
        @words.delete(word)
        puts "The word '#{word}' deleted from the dictionary!"
    end

    def list_all_words()
        puts @words
    end

    def loop_menu
        puts "\nEnter the Serial_no to proceed"
        puts "1. List all words"
        puts "2. Add word"
        puts "3. Search Word"
        puts "4. Edit word"
        puts "5. Delete word"
        puts "Press ctl + c to exit!"
    end
end

# Object creation
obj = Dictionary.new

while true
    obj.loop_menu
    option = gets.chomp.to_i
    # Switch case
    case option
        when 1
            obj.list_all_words
        when 2
            obj.add_word
        when 3
            obj.search_word
        when 4
            obj.update_word
        when 5
            obj.delete_word
        else
            puts "\nPlease enter any valid option from the menu loop"
        end
end
