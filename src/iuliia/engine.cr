# frozen_string_literal: true

module Iuliia
  module Engine
    private WORD_ENDING_LENGTH = 2
    private SPLITTER_REGEX     = /\b/

    private abstract def standard_rules_mapping : Hash(String, String)
    private abstract def previous_characters_rules_mapping : Hash(String, String)
    private abstract def next_characters_rules_mapping : Hash(String, String)
    private abstract def special_word_endings_rules_mapping : Hash(String, String)

    # Transliterates the cyrillic *string* into latin characters.
    def translate(string : String) : String
      String.build do |io|
        words = split_string_into_meaningful_units(string)
        words.each do |word|
          io << transliterate_word(word)
        end
      end
    end

    private def split_string_into_meaningful_units(string)
      string.split(SPLITTER_REGEX)
    end

    private def transliterate_word(word)
      stem, ending = split_word_stem_and_word_ending(word)
      return transliterate_stem(word) if ending.nil?

      if romanized_ending = transliterate_special_word_endings(ending)
        romanized_stem = transliterate_stem(stem)
        romanized_stem + romanized_ending
      else
        transliterate_stem(word)
      end
    end

    private def split_word_stem_and_word_ending(word)
      if word.size > WORD_ENDING_LENGTH
        stem = word[...(-WORD_ENDING_LENGTH)]
        ending = word[-WORD_ENDING_LENGTH..]
      else
        stem = word
      end

      {stem, ending}
    end

    private def transliterate_stem(word)
      String.build do |io|
        previous_char = ""
        word.split("").each_with_index do |current_char, index|
          next_char = word[index + 1]? || ""
          io << transliterate_char(previous_char, current_char, next_char)
          previous_char = current_char
        end
      end
    end

    private def transliterate_char(previous_char, current_char, next_char)
      previous_characters_rules_mapping[previous_char + current_char]? ||
        next_characters_rules_mapping[current_char + next_char]? ||
        standard_rules_mapping[current_char]? ||
        current_char
    end

    private def transliterate_special_word_endings(ending)
      special_word_endings_rules_mapping[ending]?
    end
  end
end
