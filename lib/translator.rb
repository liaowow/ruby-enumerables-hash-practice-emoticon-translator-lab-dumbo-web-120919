# require modules here

# def load_library(file)
#   require "yaml"
#   emoticons = YAML.load_file(file)

#   new_hash = Hash.new {|k, v| k[v] = {}}

#   emoticons.each do |meaning, emoticon|
#     emoticon.each do |arr_element|
#       new_hash["get_meaning"][arr_element] = meaning
#       new_hash["get_emoticon"][meaning] = arr_element
#     end
#   end

#   new_hash
# end

def load_library(file)
  require "yaml"
  library = YAML.load_file(file)

  final = {
    "get_meaning": {},
    "get_emoticon": {}
  }

  library.each do |meaning, emoticons|
    final["get_meaning"][emoticons[1]] = meaning
    final["get_emoticon"][emoticons[0]] = emoticons[1]
  end
final
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end