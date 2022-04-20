require('rspec')
require('scrabble_scorer')


describe (Scrabble_scorer)do
  describe ('#split_array') do
    # it("should split the word into an array of it's letters") do
    #   test = Scrabble_scorer.new
    #   expect(test.split_array("word")).to(eq(["w","o","r","d"]))
    # end
    it("returns a scrabble score for a letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("A")).to(eq(1))
    end  
  end
end
    