def dictionary(word)
new_hash = {"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"}
subs = word
new_hash.each do |k,v|
  if k == word || k.capitalize == word
    subs = v
end
end
subs
end

def word_substituter(str)
  newArr=[]
arr = str.split(" ")
arr.each do |n|
  newArr<<dictionary(n)
  end
newArr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |str|
    puts word_substituter(str)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  short =""
  newTweet = selective_tweet_shortener(tweet)
  if newTweet.size > 140
    short = newTweet[0..136]+"..."
  else
    short = newTweet
  end
  short
end


