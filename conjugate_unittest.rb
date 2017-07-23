#require_relative "conjugate"
require "test/unit"

class Conjugator 
    @@conjugations
    def initialize
        @@conjugations=Hash.new
        @@conjugations["I go"]="eu vou"
        @@conjugations["you go"]="você vai"
        @@conjugations["we go"]="nós vamos"
        @@conjugations["they go"]="eles vão"
        @@conjugations["he go"]="ele vai"
        @@conjugations["she go"]="ela vai"
        @@conjugations["you guys go"]="vocês vão"
    end
    def conjugate(subject, englishverb)
        @@conjugations[subject+" go"]
    end    
end

class TestConjugation < Test::Unit::TestCase
    @@myconjugator 
    def setup
        @@myconjugator=Conjugator.new
    end    
    def test_craptest
        assert_equal(1,1)
    end
    def test_whenIgo_theneuvouiscorrect 
        portuguese=@@myconjugator.conjugate("I","go") 
        assert_equal("eu vou",portuguese)    
    end
    def test_whenyougo_thenvocêvaiiscorrect
        portuguese=@@myconjugator.conjugate("you","go")
        assert_equal("você vai", portuguese)
    end  
    def test_whenwego_thennósvamosiscorrect
        portuguese=@@myconjugator.conjugate("we","go")
        assert_equal("nós vamos", portuguese)
    end    
     def test_whentheygo_thenelesvãoiscorrect
        portuguese=@@myconjugator.conjugate("they","go")
        assert_equal("eles vão", portuguese)
    end   
     def test_whenhegoes_thenelevaiiscorrect
        portuguese=@@myconjugator.conjugate("he","go")
        assert_equal("ele vai", portuguese)
    end  
     def test_whenshegoes_thenelavaiiscorrect
        portuguese=@@myconjugator.conjugate("she","go")
        assert_equal("ela vai", portuguese)
    end 
     def test_whenyouguys_thenvoceêsvãoiscorrect
        portuguese=@@myconjugator.conjugate("you guys","go")
        assert_equal("vocês vão", portuguese)
    end 

end    
