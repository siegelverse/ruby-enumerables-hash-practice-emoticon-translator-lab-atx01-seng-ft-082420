require 'yaml'
require 'pry'
def load_library(file_path)
  library = {}
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each do |name, array|
    library[name] = {}
    library[name][:english] = array[0]
    library[name][:japanese] = array[1]
    #binding.pry 
 end
library
end 

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library.keys.find do |
end 

def get_english_meaning(file_path, emoticon)
  
end 