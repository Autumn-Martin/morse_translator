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

  def test_it_translates_capital_letters
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
  end

  def test_it_translates_capitals_and_numbers
    translator = Translator.new
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_it_translates_input_from_file
    translator = Translator.new
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end
end
