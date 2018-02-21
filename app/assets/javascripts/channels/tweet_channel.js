App.cable.subscriptions.create({ channel: "TweetChannel" },
  {
    received: addTweet
  }
)

function addTweet(tweet){
  $('#tweets').prepend(tweet.html)
}
