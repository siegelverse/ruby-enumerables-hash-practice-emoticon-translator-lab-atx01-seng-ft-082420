require 'yaml'
require 'pry'
def load_library(emoticon_file)
  library = {
    "japanese" => {},
    "english" => {}
  }
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each do |meaning, array|
    english_emoticon = array[0]
    japanese_emoticon = array[1]
    library["japanese"][japanese_emoticon] = meaning
    library["english"][english_emoticon] = array[1]
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