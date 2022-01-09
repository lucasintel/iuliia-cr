require "./iuliia/schemas/*"

module Iuliia
  def self.available_schemas
    {{ Iuliia::Engine.includers.map(&.instance) }}
  end
end
