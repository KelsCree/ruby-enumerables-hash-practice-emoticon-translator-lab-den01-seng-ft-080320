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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end