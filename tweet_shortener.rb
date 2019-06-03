# Write your code here.
require 'pry'
# Define dictionary method
# Method takes a string and it's corresponding value from a hash of words
def dictionary(word)
  words = {
    "hello": 'hi',
    "to": '2',
    "two": '2', 
    "too": '2',
    "for": '4',
    "be": 'b',
    "you": 'u',
    "at": '@',
    "and": '&'
  }
  words[word.to_sym]
end

sample_str = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def word_substituter(str)
  new_str_arr = []
  
  str.split.each {
    |word| dictionary(word) ? new_str_arr << dictionary(word) : new_str_arr << word
  }
  
  new_str_arr.join(" ")
end

puts word_substituter(sample_str)