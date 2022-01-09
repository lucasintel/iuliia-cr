# DO NOT EDIT THIS FILE.
# Generated from Iuliia schemas. See `Iuliia::SchemaImporter`.

require "../engine"

module Iuliia
  # The `AlaLc` module provides transliteration (`.translate`) using
  # the ALA-LC transliteration schema..
  #
  # ### Examples
  #
  # ```
  # Iuliia::AlaLc.translate("Юлия, съешь ещё этих мягких французских булок из Йошкар-Олы, да выпей алтайского чаю")
  # # => "I͡ulii͡a, sʺeshʹ eshchё ėtikh mi͡agkikh frant͡suzskikh bulok iz Ĭoshkar-Oly, da vypeĭ altaĭskogo chai͡u"
  # ```
  module AlaLc
    include Iuliia::Engine
    extend self

    private NAME        = "ala_lc"
    private DESCRIPTION = "ALA-LC transliteration schema."

    private STANDARD_RULES_MAPPING = {
      "а" => "a",
      "б" => "b",
      "в" => "v",
      "г" => "g",
      "д" => "d",
      "е" => "e",
      "ё" => "ё",
      "ж" => "zh",
      "з" => "z",
      "и" => "i",
      "й" => "ĭ",
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
      "х" => "kh",
      "ц" => "t͡s",
      "ч" => "ch",
      "ш" => "sh",
      "щ" => "shch",
      "ъ" => "ʺ",
      "ы" => "y",
      "ь" => "ʹ",
      "э" => "ė",
      "ю" => "i͡u",
      "я" => "i͡a",
      "А" => "A",
      "Б" => "B",
      "В" => "V",
      "Г" => "G",
      "Д" => "D",
      "Е" => "E",
      "Ё" => "Ё",
      "Ж" => "Zh",
      "З" => "Z",
      "И" => "I",
      "Й" => "Ĭ",
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
      "Х" => "Kh",
      "Ц" => "T͡s",
      "Ч" => "Ch",
      "Ш" => "Sh",
      "Щ" => "Shch",
      "Ъ" => "ʺ",
      "Ы" => "Y",
      "Ь" => "ʹ",
      "Э" => "Ė",
      "Ю" => "I͡u",
      "Я" => "I͡a",
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
