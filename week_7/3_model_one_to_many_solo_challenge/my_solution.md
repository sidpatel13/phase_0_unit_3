# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? --> Text which constitutes a tweet. The date and time of the tweet.

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... --> Tweets by a certain user all have that user’s id attached to it.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
http://imgur.com/D74XGJs

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

-all tweets for a certain user id
SELECT tweet
FROM tweets
WHERE user_id = (enter any user id here)

-the tweets for a certain user id that were made after last Wednesday
SELECT tweet
FROM tweets
WHERE created_at > 2014-05-07

-all the tweets associated with a given user’s twitter handle
SELECT tweet
FROM tweets JOIN users ON (user_id=id)
WHERE twitter_handle = “(enter someone’s twitter handle here)”


-the twitter handle associated with a given tweet id
SELECT twitter_handle
FROM users JOIN tweets (id=user_id)
WHERE tweet_id = (enter any tweet id here)


## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->