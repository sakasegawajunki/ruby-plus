class WordSynth
  def initialize
    @effects = []
  end
  def add_effect(effect)
    @effects << effect
  end
  def play(orginal_words)
    @effects.inject(orginal_words) do |words, effect|
      effect.call(words)
    end
  end
end

synth = WordSynth.new
synth.add_effect(effects.reverse)
synth.play("Ruby is fun!")