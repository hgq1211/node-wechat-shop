// GET /user
exports.get = function (req, res, next) {
	res.render('404',{
		layout:'no-article',
		title:"你好"
	})
};
