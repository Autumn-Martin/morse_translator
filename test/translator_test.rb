# YOUR TESTS GO IN HERE!

require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/translator"

class TranslatorTest < Minitest::Test

  def test_it_exists
  translator = Translator.new
  assert_instance_of Translator, translator
  end

  def test_it_translates
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end 

end
