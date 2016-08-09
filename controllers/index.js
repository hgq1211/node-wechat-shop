// GET /user
exports.get = function (req, res, next) {
	res.render('index',{
		title:"你好"
	})
};
