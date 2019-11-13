# require modules here
require 'yaml'
file = YAML.load_file( './lib/emoticons.yml' )

def load_library(file_path)
  # code goes here
  emoticons = { "get_meaning" => {},"get_emoticon" => {}}
  
  YAML.load_file(path).each do |meaning, language|
    eng,jp = language
    emoticons["get_meaning"][jp] = meaning
    emoticons["get_emoticon"][eng] =jp
  end 
  emoticons
end

def get_japanese_emoticon(file, emoticon)
  # code goes here, takes traditional western emoticon and translate it to japnese version, rely on load_library
end

def get_english_meaning(file, emoticon)
  # code goes here, takes japanese emoticon and returns meaning in english, rely on load_library
end