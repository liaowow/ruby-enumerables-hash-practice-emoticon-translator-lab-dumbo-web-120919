# require modules here

def load_library(file)
  require "yaml"
  emoticons = YAML.load_file(file)

  new_hash = Hash.new {|k, v| k[v] = {}}

  emoticons.each do |meaning, emoticon|
    emoticon.each do |arr_element|
      new_hash["get_meaning"][arr_element] = meaning
      new_hash["get_emoticon"][emoticon[0]] = emoticon[1]
    end
  end

  new_hash
end

def get_japanese_emoticon(file, emo)
  db = load_library(file)
  
  
  
end

def get_english_meaning
  # code goes here
end