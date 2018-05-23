# Write your code here.
require 'pry'

def dictionary
 dictionary = {
   "hello" => 'hi',
   "to" => '2',
   "two" => '2',
   "too" => '2',
   "for" => '4',
   "four" => '4',
   "be" => 'b',
   "you" => 'u',
   "at" => '@',
   "and" => '&'
 }
end

def word_substituter(tweet)
    #iterate over every word in the tweet to compare it to hash keys
    #covert tweet into an array
    #then convert array back into shortened string
    array = tweet.split(" ")
    find_keys = dictionary.keys

    array.collect! do |word|
      if find_keys.include?(word.downcase) == true
        word = dictionary[word.downcase]
      else
        word
      end
    end
    shortened = array.join(' ')
    shortened
end


def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter (tweet)}
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
    tweet
    end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
