# DO NOT EDIT THIS FILE.
# Generated from Iuliia schemas. See `Iuliia::SchemaImporter`.

require "../engine"

module Iuliia
  # The `Scientific` module provides transliteration (`.translate`) using
  # the Scientific transliteration schema.
  #
  # ### Examples
  #
  # ```
  # Iuliia::Scientific.translate("Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю")
  # # => "Julija, sʺešʹ eščё ètix mjagkix francuzskix bulok iz Joškar-Oly, da vypej altajskogo čaju"
  # ```
  module Scientific
    include Iuliia::Engine
    extend self

    private NAME        = "scientific"
    private DESCRIPTION = "Scientific transliteration schema"

    private STANDARD_RULES_MAPPING = {
      "а" => "a",
      "б" => "b",
      "в" => "v",
      "г" => "g",
      "д" => "d",
      "е" => "e",
      "ё" => "ё",
      "ж" => "ž",
      "з" => "z",
      "и" => "i",
      "й" => "j",
      "к" => "k",
      "л" => "l",
      "м" => "m",
      "н" => "n",
      "о" => "o",
      "п" => "p",
      "р" => "r",
      "с" => "s",
      "т" => "t",
      "у" => "u",
      "ф" => "f",
      "х" => "x",
      "ц" => "c",
      "ч" => "č",
      "ш" => "š",
      "щ" => "šč",
      "ъ" => "ʺ",
      "ы" => "y",
      "ь" => "ʹ",
      "э" => "è",
      "ю" => "ju",
      "я" => "ja",
      "А" => "A",
      "Б" => "B",
      "В" => "V",
      "Г" => "G",
      "Д" => "D",
      "Е" => "E",
      "Ё" => "Ё",
      "Ж" => "Ž",
      "З" => "Z",
      "И" => "I",
      "Й" => "J",
      "К" => "K",
      "Л" => "L",
      "М" => "M",
      "Н" => "N",
      "О" => "O",
      "П" => "P",
      "Р" => "R",
      "С" => "S",
      "Т" => "T",
      "У" => "U",
      "Ф" => "F",
      "Х" => "X",
      "Ц" => "C",
      "Ч" => "Č",
      "Ш" => "Š",
      "Щ" => "Šč",
      "Ъ" => "ʺ",
      "Ы" => "Y",
      "Ь" => "ʹ",
      "Э" => "È",
      "Ю" => "Ju",
      "Я" => "Ja",
    }
    private PREVIOUS_CHARACTERS_RULES_MAPPING  = {} of String => String
    private NEXT_CHARACTERS_RULES_MAPPING      = {} of String => String
    private SPECIAL_WORD_ENDINGS_RULES_MAPPING = {} of String => String

    # Returns the transliteration schema **name**.
    def name : String
      NAME
    end

    # Returns the transliteration schema **description**.
    def description : String
      DESCRIPTION
    end

    private def standard_rules_mapping : Hash(String, String)
      STANDARD_RULES_MAPPING
    end

    private def previous_characters_rules_mapping : Hash(String, String)
      PREVIOUS_CHARACTERS_RULES_MAPPING
    end

    private def next_characters_rules_mapping : Hash(String, String)
      NEXT_CHARACTERS_RULES_MAPPING
    end

    private def special_word_endings_rules_mapping : Hash(String, String)
      SPECIAL_WORD_ENDINGS_RULES_MAPPING
    end
  end
end
