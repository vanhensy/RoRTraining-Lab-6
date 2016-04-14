class LanguageBot < SlackRubyBot::Bot
   command 'say' do |client, data, match|
     send_message client, data.channel, match['expression']
   end
   
   command 'fuck' do |client, data, match|
     send_message client, data.channel, match['expression']
   end

   command 'hello' do |client, data, match|
      client.say(text: "hello <@#{data.user}>!", channel: data.channel)
   end

   command 'hello' do |client, data, match|
       I18n.locale = :vi
       text = I18n.t "hello", user: user.username
       client.say(text: text, channel: data.channel)
   end

end