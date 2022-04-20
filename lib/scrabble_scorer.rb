require('pry')

class Scrabble_scorer
    def split_array(word)
        counter = 0
        one_point = ['a','e','i','o','u','l','n','r','s','t']
        two_points = ['d','g']
        three_points = ['b','c','m','p']      
        four_points = ['f', 'h', 'v', 'w', 'y']
        five_points = ['k']
        eight_points = ['j', 'x']
        ten_points = ['q','z']
        word_array = word.downcase().split("")
        word_array.each do |letter|
          if one_point.include?(letter) 
              counter += 1
          elsif two_points.include?(letter)
              counter += 2
          elsif three_points.include?(letter)
              counter += 3
          elsif four_points.include?(letter)
              counter += 4
          elsif five_points.include?(letter)
              counter += 5
          elsif eight_points.include?(letter)
              counter += 8
          elsif ten_points.include?(letter)
              counter += 10       
          end
        end
        counter
    end
end