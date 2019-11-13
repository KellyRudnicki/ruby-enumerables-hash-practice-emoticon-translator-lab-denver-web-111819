# require modules here
require "yaml"
file = YAML.load_file('./lib/emoticons.yml')

def load_library(file)
  # code goes here
  result = {
    "get_meaning" => {},
    "get_emoticon" => {}
    
  }
  
  return result
  
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
end

def get_english_meaning(file, emoticon)
  # code goes here
  pp file
end