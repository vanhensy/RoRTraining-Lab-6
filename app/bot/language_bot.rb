class LanguageBot < SlackRubyBot::Bot
 command 'say' do |client, data, match|
     send_message client, data.channel, match['expression']
   end
   command 'fuck' do |client, data, match|
     send_message client, data.channel, match['expression']
   end
end