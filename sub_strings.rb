dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    result = Hash.new(0)
    string = string.downcase.split(' ')
    string.select{|x| x.gsub!(/[^a-z].*/,"")}
    string = string.join(' ')
    dictionary.each do |x|
        if string.scan(x).length != 0 
            result[x] = string.scan(x).length  
        end
    end
    p result
    result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
