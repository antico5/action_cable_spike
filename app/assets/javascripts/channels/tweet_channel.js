App.cable.subscriptions.create({ channel: "TweetChannel" },
  {
    received: addTweet
  }
)

function addTweet(tweet){
  $('#tweets').prepend("<p><b>" + tweet.sender + ":</b> " + tweet.message + "</p>")
}
