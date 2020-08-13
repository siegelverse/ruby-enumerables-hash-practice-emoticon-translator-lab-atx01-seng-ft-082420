require 'yaml'
require 'pry'
def load_library(emoticon_file)
  library= {}
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each do |name, array|
    library[name][:english] = array[0]
    library[name][:japanese] = array[1]
    binding.pry 
 end
library
end 

def get_japanese_emoticon(emoticon_file, emoticon)
  
end 

def get_english_meaning(emoticon_file, emoticon)
  
end 