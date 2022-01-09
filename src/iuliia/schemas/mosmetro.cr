# Generated from Iuliia schemas. See `Iuliia::SchemaImporter`.
# 2022-01-09 03:48:22 UTC
#
# DO NOT edit this file directly.

require "../engine"

module Iuliia
  module Mosmetro
    include Iuliia::Engine
    extend self

    NAME        = "mosmetro"
    DESCRIPTION = "Moscow Metro map transliteration schema"

    STANDARD_RULES_MAPPING = {
      "а" => "a",
      "б" => "b",
      "в" => "v",
      "г" => "g",
      "д" => "d",
      "е" => "e",
      "ё" => "e",
      "ж" => "zh",
      "з" => "z",
      "и" => "i",
      "й" => "y",
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
      "ц" => "ts",
      "ч" => "ch",
      "ш" => "sh",
      "щ" => "sch",
      "ъ" => "",
      "ы" => "y",
      "ь" => "",
      "э" => "e",
      "ю" => "yu",
      "я" => "ya",
      "А" => "A",
      "Б" => "B",
      "В" => "V",
      "Г" => "G",
      "Д" => "D",
      "Е" => "E",
      "Ё" => "E",
      "Ж" => "Zh",
      "З" => "Z",
      "И" => "I",
      "Й" => "Y",
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
      "Ц" => "Ts",
      "Ч" => "Ch",
      "Ш" => "Sh",
      "Щ" => "Sch",
      "Ъ" => "",
      "Ы" => "Y",
      "Ь" => "",
      "Э" => "E",
      "Ю" => "Yu",
      "Я" => "Ya",
    }
    PREVIOUS_CHARACTERS_RULES_MAPPING = {
      "тц" => "s",
      "ьё" => "o",
      "ъё" => "o",
      "Тц" => "s",
      "Ьё" => "o",
      "Ъё" => "o",
      "ТЦ" => "S",
      "ЬЁ" => "O",
      "ЪЁ" => "O",
    }
    NEXT_CHARACTERS_RULES_MAPPING = {
      "ьа" => "y",
      "ье" => "y",
      "ьё" => "y",
      "ьи" => "y",
      "ьо" => "y",
      "ьу" => "y",
      "ьэ" => "y",
      "ъа" => "y",
      "ъе" => "y",
      "ъё" => "y",
      "ъи" => "y",
      "ъо" => "y",
      "ъу" => "y",
      "ъэ" => "y",
      "ЬА" => "Y",
      "ЬЕ" => "Y",
      "ЬЁ" => "Y",
      "ЬИ" => "Y",
      "ЬО" => "Y",
      "ЬУ" => "Y",
      "ЬЭ" => "Y",
      "ЪА" => "Y",
      "ЪЕ" => "Y",
      "ЪЁ" => "Y",
      "ЪИ" => "Y",
      "ЪО" => "Y",
      "ЪУ" => "Y",
      "ЪЭ" => "Y",
      "Ьа" => "Y",
      "Ье" => "Y",
      "Ьё" => "Y",
      "Ьи" => "Y",
      "Ьо" => "Y",
      "Ьу" => "Y",
      "Ьэ" => "Y",
      "Ъа" => "Y",
      "Ъе" => "Y",
      "Ъё" => "Y",
      "Ъи" => "Y",
      "Ъо" => "Y",
      "Ъу" => "Y",
      "Ъэ" => "Y",
    }
    SPECIAL_WORD_ENDINGS_RULES_MAPPING = {
      "ий" => "y",
      "ый" => "y",
      "Ий" => "Y",
      "Ый" => "Y",
      "ИЙ" => "Y",
      "ЫЙ" => "Y",
    }

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