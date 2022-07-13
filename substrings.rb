def substrings (words, dictionary)
    words_flattened = words.downcase.gsub(/[^a-z0-9\s]/i, '')
    words_array = words_flattened.split(' ')
    words_tally = words_array.tally
    dictionary_tally = dictionary.tally
    total = {}
    total.merge!(words_tally, dictionary_tally) { |key, old_key, new_key| old_key + new_key }
    total
end

def main
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    puts substrings("Howdy partner, sit down! How's it going?", dictionary).inspect
end

main()