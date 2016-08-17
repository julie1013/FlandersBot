# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md
#

module.exports = (robot) ->

  robot.respond /hello/i (res) ->
    res.send "Hi diddly-ho, neighborino!"

  robot.respond /\thanks\b/ (res) ->
    res.send "Thankily-dankily!"

  robot.respond /Aw, is this gonna be about Jesus?/ (res) ->
    res.send "I'm as permissive as the next parent. I mean, just yesterday I let Todd buy some Red Hots with a cartoon devil on the box!"

  robot.hear /thank god/i, (res) ->
    res.send "Boys, before we eat, don't forget to thank the lord for this bountiful-- PENIS?!?!"

  robot.hear /\count\b/, (msg) ->
     robot.brain.set('count_up',
    (robot.brain.get('count_up') || 0) + 1
    if count_up is 666
      res.send "Oh, dear Lord! Not Satan!!!"
      else res.send 'count_up'
  )

  sexy = ['showering', 'skiing', 'abs']

  robot.hear /Stupid sexy Flanders!/i, (res) ->
    res.send res.random sexy

  robot.hear /hell/i, (res)->
    res.send "Aw, hell, diddly ding-dong crap!!"


  robot.respond /I'm going to (.*)/i, (res) ->
    place = res.match[0]
    if place is "church"
      res.reply "Of course! A daily dose of Vitamin Church!"
    else
      res.reply "It's Sunday! You can't go to #{place}!"

  robot.topic (res) ->
    res.send "We're changing the topic to #{res.message.text}? Well, I'll be darn-diddly-arned!"


  enterReplies = ['Well, you sure are looking chipper this morning!', 'Howdy-do, neighborino!', 'I welcome you to the neighborhood!', 'Affordable tract housing made us neighbors, but you made us friends.']
  leaveReplies = ['Bye diddly-eye!', 'Toodly-doo!', 'Godspeed, little doodle!']

  robot.enter (res) ->
    res.send res.random enterReplies
  robot.leave (res) ->
    res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
