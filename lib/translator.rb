# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  data = YAML.load_file(file_path)
  result = data.each_with_object({}) do |(key, value), final_hash|
    if !final_hash[key]
      final_hash[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end
    result
end

def get_japanese_emoticon(file_path, emoji)
   library = load_library(file_path)
    library.each do |meaning, symbol|
      if emoji == symbol[:english]
      return [:japanese]
      binding.pry
      end
     "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoji)
   library = load_library(file_path)
   library.each do |meaning, symbol|
     if emoji == symbol[:japanese]
       return meaning
 end
 "Sorry, that emoticon was not found"
 end