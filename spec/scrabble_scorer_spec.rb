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
    it("returns the correct sum for inputting all one point letters") do
      test = Scrabble_scorer.new
      expect(test.split_array("aeioulnrst")).to(eq(10))
    end
    it("returns the correct sum for inputting a two point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("d")).to(eq(2))
    end 
    it("returns the correct sum for inputting all two point letters") do
      test = Scrabble_scorer.new
      expect(test.split_array("dg")).to(eq(4))
    end 
    it("returns the correct sum for a one and two point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("ad")).to(eq(3))
    end
    it("returns the correct sum for a three point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("b")).to(eq(3))
    end
    it("returns the correct sum for a four point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("b")).to(eq(3))
    end
    it("returns the correct sum for a five point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("k")).to(eq(5))
    end
    it("returns the correct sum for a eight point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("j")).to(eq(8))
    end
    it("returns the correct sum for a 10 point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("q")).to(eq(10))
    end
    it("returns the correct sum for a 10 point letter") do
      test = Scrabble_scorer.new
      expect(test.split_array("abcdefghijklmnopqrstuvwxyz")).to(eq(87))
    end                
  end
end
    