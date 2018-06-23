# Write your code here.
require "pry"

def dictionary

	sustitutes = {
		"hello" => 'hi',
		"to" => '2',
		"too" => '2',
		"two" => '2',
		"for" => '4',
		"For" => '4',
		"four" => '4',
		'be' => 'b',
		'you' => 'u',
		"at" => "@",
		"and" => "&"
	}

end

def word_substituter(tweet)
	array = tweet.split(" ")
	new_array = []
	array.each do |word|
		dictionary[word] ? new_array << dictionary[word]  : new_array << word
	end
	new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end 
	
end

def selective_tweet_shortener(tweet)
	return_value = tweet.length > 140 ? word_substituter(tweet) : tweet
	return_value
end

def shortened_tweet_truncator(tweet)
	selective_tweet_shortener(tweet)[0...140]
end