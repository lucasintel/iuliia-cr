require "json"

module Iuliia
  struct Schema
    include JSON::Serializable

    getter name : String
    getter description : String
    getter url : String
    getter mapping : Hash(String, String)?
    getter prev_mapping : Hash(String, String)?
    getter next_mapping : Hash(String, String)?
    getter ending_mapping : Hash(String, String)?
    getter samples : Array(Array(String))
  end
end
