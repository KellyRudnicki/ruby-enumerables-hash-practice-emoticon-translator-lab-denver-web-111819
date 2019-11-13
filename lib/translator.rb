# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  emoticons = { "get_meaning" => {},"get_emoticon" => {}}
  
  YAML.load_file(file_path).each do |meaning, language|
    eng,jp = language
    emoticons["get_meaning"][jp] = meaning
    emoticons["get_emoticon"][eng] =jp
  end 
  emoticons
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  result = emoticons["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
  # code goes here, takes japanese emoticon and returns meaning in english, rely on load_library
end