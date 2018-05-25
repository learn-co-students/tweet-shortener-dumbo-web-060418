# Write your code here.
dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&" 
}


def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&" 
}
  tweet_ar = tweet.split(" ")
  
  tweet_ar.each do |word|
    dictionary.each do |word_key, short_word|
      if word == word_key.to_s 
        tweet_ar[tweet_ar.index(word)] = short_word
      end
    end
  end
  tweet_ar.join(" ")
end

def bulk_tweet_shortener(tweets_strs)
 dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&" 
}
tweets_ar = []

tweets_strs.each do |tweet|
tweets_ar.push(tweet.split)
end

  tweets_ar.each do |full_tweet|
    full_tweet.each do |word|
       dictionary.each do |word_key, short_word|
      if word.downcase == word_key.to_s 
        full_tweet[full_tweet.index(word)] = short_word
      end
    end
  end
  puts full_tweet.join(" ")
end
end

def selective_tweet_shortener(tweet)
dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&" 
}

if tweet.length > 140 
  tweet_ar = tweet.split(" ")
  
  tweet_ar.each do |word|
    dictionary.each do |word_key, short_word|
      if word == word_key.to_s 
        tweet_ar[tweet_ar.index(word)] = short_word
      end
    end
  end
  tweet_ar.join(" ")
else
  tweet
end
end

def shortened_tweet_truncator(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&" 
}
  tweet_ar = tweet.split(" ")
  
  tweet_ar.each do |word|
    dictionary.each do |word_key, short_word|
      if word == word_key.to_s 
        tweet_ar[tweet_ar.index(word)] = short_word
      end
    end
  end
  new_tweet = tweet_ar.join(" ")
  if new_tweet.length > 140
   new_tweet = new_tweet.slice(0, 140)
 else
   new_tweet
 end
end
