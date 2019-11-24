# require modules here

def load_library(file)
  require "yaml"
  emoticons = YAML.load_file(file)

  new_hash = Hash.new {|k, v| k[v] = {}}

  emoticons.each do |meaning, emoticon|
    new_hash["get_meaning"][emoticon] = meaning
    new_hash["get_emoticon"][meaning] = emoticon
  end

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end