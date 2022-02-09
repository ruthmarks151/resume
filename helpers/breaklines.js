var breaklines = function () {};
 
breaklines.register = function (Handlebars) {
	Handlebars.registerHelper('breaklines', function(text) {
	text = Handlebars.Utils.escapeExpression(text);
	text = text.replace(/(\r\n|\n|\r)/gm, '<br>');
	return new Handlebars.SafeString(text);
	});
};
 
module.exports = breaklines;
