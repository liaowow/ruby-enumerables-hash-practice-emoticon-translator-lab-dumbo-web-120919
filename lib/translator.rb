# require modules here

def load_library(file)
  require "yaml"
  emoticons = YAML.load_file(file)

  new_hash = {}

  emoticons.each do |key, value|
    new_hash["get_meaning"] = key
    new_hash["get_emoticon"] = value
  end

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end