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
  words[word.downcase.to_sym]
end

sample_str = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

sample_str2 = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

sample_arr = [sample_str, sample_str2]

def word_substituter(str)
  new_str_arr = []
  str.split.each do |word|
    dictionary(word) ? new_str_arr << dictionary(word) : new_str_arr << word
  end
  new_str_arr.join(" ")
end


def bulk_tweet_shortener(arr)
  arr.each {|item| puts word_substituter(item)}
end

def selective_tweet_shortener(str)
  str.length > 140 ? word_substituter(str) : str
end

def shortened_tweet_truncator(str)
end

# puts selective_tweet_shortener(sample_str)
# puts selective_tweet_shortener(sample_str2)