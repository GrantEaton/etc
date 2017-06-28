


var watson = require('watson-developer-cloud');

		var conversation = watson.conversation({
		  username: '6b759ecb-74eb-450f-8109-53ff9e354d6d',
		  password: 'CYpYohus76OZ',
		  version: 'v1',
		  version_date: '2017-04-21'
		});

		// replace with the context obtained from the initial request
		var context = {};

		conversation.message({
		  workspace_id: 'f6cf0aaf-31f8-4242-916a-c31358d7a145',
		  input: {'text': "hi"},
		  context: context
		},  function(err, response) {
		  if (err)
			console.log('error:', err);
		  else
			console.log(json.stringify(response, null, 2));
		});



