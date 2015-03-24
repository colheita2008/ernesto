module.exports = (robot) ->
  robot.respond /hi|hey|hello|ol[aá]/i, (msg) ->
    msg.send "Hey!"

  robot.respond /(who|what) are you/i, (msg) ->
    msg.send "I'm the culmination of years of AI research.\n" +
      "Ask me privately for help and I'll tell you what I can do for you."

  robot.hear /mek ?é das cenas\??/i, (msg) ->
    msg.send "ta tudo"

  robot.respond /relay(?: to)? (#[^ ]+) +(.*)/i, (msg) ->
    channel = msg.match[1]
    text = msg.match[2]
    msg.envelope.room = channel
    msg.send text
