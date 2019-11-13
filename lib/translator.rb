# require modules here
require "yaml"
file = YAML.load_file('./lib/emoticons.yml')

def load_library(file)
  # code goes here
  result = {
    "get_meaning" => {file[0][3]},
    "get_emoticon" => {}
    
  }
  index = 0 
  while index < file.length do 
    
    file.collect
    index += 1 
    
  end 
  file.collect{|key, value| key => result["get_meaning"]}
  
  return result
  
end

def get_japanese_emoticon(file, emoticon)
  # code goes here, takes traditional western emoticon and translate it to japnese version, rely on load_library
end

def get_english_meaning(file, emoticon)
  # code goes here, takes japanese emoticon and returns meaning in english, rely on load_library
  pp file
end