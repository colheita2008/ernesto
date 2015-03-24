module.exports = (robot) ->
  robot.hear /rasteiro/i, (msg) ->
    msg.send ">HIIIHIIIHIIIHAAAHAAAHAAAHAAA\n -Rasteiro"
	
  robot.hear /mek ?é das cenas\??/i, (msg) ->
    msg.send "ta tudo"
	
  robot.respond /relay(?: to)? (#[^ ]+) +(.*)/i, (msg) ->
    channel = msg.match[1]
    text = msg.match[2]
    msg.envelope.room = channel
    msg.send text