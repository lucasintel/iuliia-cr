require "./iuliia/schemas/*"

module Iuliia
  # Returns the available transliteration standards.
  #
  # For more information on the schemas, see https://dangry.ru/iuliia
  #
  # ```
  # schema = Iuliia.available_schemas.first
  # # => Iuliia::Mosmetro
  #
  # schema.description
  # # => "Moscow Metro map transliteration schema"
  #
  # schema.name
  # # => "mosmetro"
  #
  # Iuliia.available_schemas.each do |schema|
  #   schema.translate("Битцевский Парк")
  # end
  # ```
  def self.available_schemas
    {{ Iuliia::Engine.includers }}
  end
end
