var monthFormat = function () {};

monthFormat.register = function (Handlebars) {
  const months = ["Jan.", "Feb.", "Mar.", "Apr.", "May", "Jun.", "Jul.", "Aug.", "Sep.", "Oct.", "Nov.", "Dec."]
	Handlebars.registerHelper('monthFormat', function(text) {
	text = Handlebars.Utils.escapeExpression(text);
	var y,m,d;
  [y,m,d] = text.split("-")
  var monthText = months[parseInt(m) - 1]
  var result = monthText ? (monthText + " " + y) : text
	return new Handlebars.SafeString(result);
	});
};

module.exports = monthFormat;
