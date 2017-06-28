
var Botkit = require('botkit');
var request = require('request');

var watson = require('watson-developer-cloud');
var controller = Botkit.slackbot({debug: false});
var bot = controller.spawn({ token:  'xoxb-184145693811-fEKzbTDdvNwXV3K4vtjVeVpk' }).startRTM();


var context = {};

controller.hears( '(.*)', ['direct_message'], function(bot, message) {
		console.log(message);
	
		var conversation = watson.conversation({
		  username: '6b759ecb-74eb-450f-8109-53ff9e354d6d',
		  password: 'CYpYohus76OZ',
		  version: 'v1',
		  version_date: '2017-04-21'
		});

		// replace with the context obtained from the initial request

		conversation.message({
		  workspace_id: 'f6cf0aaf-31f8-4242-916a-c31358d7a145',
		  input: {'text': message.text},
		  context: context
		},  function(err, response) {
		  if (err){
			bot.reply("I'm sorry, workbot had an internal error of: ", err);
			console.log('error:', err);
		  }
		  else{
			console.log(response.intents[0].intent);
			bot.reply(message, response.output.text[0]);
			context = response.context;
			//console.log(response.output.text);
			console.log(JSON.stringify(response, null, 2));
		  }
		});
});


