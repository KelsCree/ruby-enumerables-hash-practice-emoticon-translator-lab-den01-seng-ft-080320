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
  binding.pry
end

def get_japanese_emoticon(file_path, emoji)
   library = load_library(file_path)
    library.each do |meaning, symbol|
      if symbol[:english]
        return [:japanese]
      end
end

def get_english_meaning
   library = load_library(file_path)
end