require 'yaml'
require 'pry'
def load_library(emoticon_file)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  library = {}
  emoticons.each do |meaning, array|
    library["get_meaning"][japanese_emoticon] = meaning
    library["get_emoticon"][english_emoticon] = array[1]
    #binding.pry 
 end
library
end 

def get_japanese_emoticon(emoticon_file, emoticon)
  library = load_library(emoticon_file)
  result = library['get_emoticon'][emoticon]
  if result 
    result
    else 
      "Sorry, that emoticon was not found"
  end
  binding.pry
end 

def get_english_meaning(emoticon_file, emoticon)
  library = load_library(emoticon_file)
  result = library['get_meaning'][emoticon]
  if result
    result 
    else
      "Sorry, that emoticon was not found"
 end
end 