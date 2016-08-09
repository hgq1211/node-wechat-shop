exports.get = {
	url: '/paid-success',
	handler: function (req, res, next) {
		res.render('user/paid-success',{title:"explain主页"})
	}
};