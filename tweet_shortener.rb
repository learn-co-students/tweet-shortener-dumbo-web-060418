require 'pry'

def dictionary
wordChanges = {"hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "and" => "&",
    "at" => "@"}
    return wordChanges
  end

def word_substituter(tweet)
wCKeys = dictionary.keys
wTR = []
tweetArray = tweet.split(" ")
tweetArray.collect do |word|
  if wCKeys.include?(word.downcase)
  word = dictionary[word.downcase]
  else
  word
  end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
tweets.each do |tweet|
puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet)
if tweet.length >= 140
   word_substituter(tweet)
 else
tweet
  end
  end

  def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
  word_substituter(tweet)[1..137] + "..."
else
  tweet
 end
end
