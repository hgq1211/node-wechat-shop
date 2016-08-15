// GET /user
exports.get = function (req, res, next) {

	res.render('register',{
		layout:'no-article',
		title:"你好"
	})
};
