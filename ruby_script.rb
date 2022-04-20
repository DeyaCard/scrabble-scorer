#!/usr/bin/ruby

require ('./lib/scrabble_scorer.rb')
# require_relative ('scrabble_scorer')
puts 'Enter a word to receive its scrabble score!'
test = Scrabble_scorer.new
user_word = gets.chomp
puts "your score is #{test.split