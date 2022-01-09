require "ecr/macros"
require "./mappings/schema.cr"

DEFINITIONS_PATH    = "#{__DIR__}/../src/iuliia/schemas"
SPECS_PATH          = "#{__DIR__}/../spec/schemas"
DEFINITION_TEMPLATE = "#{__DIR__}/templates/schema.ecr"
SPEC_TEMPLATE       = "#{__DIR__}/templates/schema_spec.ecr"
AVAILABLE_SCHEMAS   = "#{__DIR__}/schemas/*.json"

module Iuliia
  module SchemaImporter
    extend self

    def run
      Dir.glob(AVAILABLE_SCHEMAS) do |file|
        schema = Iuliia::Schema.from_json(File.read(file))

        File.write(definition_path_for(schema), ECR.render(DEFINITION_TEMPLATE))
        File.write(spec_path_for(schema), ECR.render(SPEC_TEMPLATE))
      end
    end

    private def definition_path_for(schema : Iuliia::Schema)
      Path[DEFINITIONS_PATH].join("#{schema.name}.cr")
    end

    private def spec_path_for(schema : Iuliia::Schema)
      Path[SPECS_PATH].join("#{schema.name}_spec.cr")
    end

    private def format_hash(hash : Hash(String, String)?)
      return "{} of String => String" if hash.nil?

      hash
        .pretty_inspect(width: 30)
        .sub(
          "{",
          "{\n"
        )
        .sub(
          "}",
          "\n}"
        )
    end

    private def build_standard_rules_mapping(schema)
      rules = schema.mapping
      return if rules.nil?
      capitalized_rules = rules.transform_keys { |k| k.capitalize }.transform_values { |v| v.capitalize }
      rules = rules.merge(capitalized_rules)
      rules
    end

    private def build_previous_characters_rules_mapping(schema)
      rules = schema.prev_mapping
      return if rules.nil?
      capitalized_rules = rules.transform_keys { |k| k.capitalize }
      upcased_rules = rules.transform_keys { |k| k.upcase }.transform_values { |v| v.capitalize }
      rules
        .merge(capitalized_rules)
        .merge(upcased_rules)
    end

    private def build_next_characters_rules_mapping(schema)
      rules = schema.next_mapping
      return if rules.nil?
      capitalized_rules = rules.transform_keys { |k| k.capitalize }.transform_values { |v| v.capitalize }
      upcased_rules = rules.transform_keys { |k| k.upcase }.transform_values { |v| v.capitalize }
      rules
        .merge(upcased_rules)
        .merge(capitalized_rules)
    end

    private def build_special_word_endings_rules_mapping(schema)
      rules = schema.ending_mapping
      return if rules.nil?
      capitalized_rules = rules.transform_keys { |k| k.capitalize }.transform_values { |v| v.capitalize }
      upcased_rules = rules.transform_keys { |k| k.upcase }.transform_values { |v| v.upcase }
      rules
        .merge(capitalized_rules)
        .merge(upcased_rules)
    end
  end
end

Iuliia::SchemaImporter.run
