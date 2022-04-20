require('pry')

class Scrabble_scorer
    def split_array(word)
        counter = 0
        one_point = ['a','b','i','o','u','l','n','r','s','t']
        word_array = word.downcase().split("")
        word_array.each do |letter|
          if one_point.include?(letter) 
              counter += 1
          end
        end
        counter
    end
end