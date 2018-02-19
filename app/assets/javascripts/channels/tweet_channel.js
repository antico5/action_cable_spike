App.cable.subscriptions.create({ channel: "TweetChannel" },
  { received: function(data){ console.log(data) },
    connected: function(){ console.log('connected') }
  }
)
console.log('subscribing')
