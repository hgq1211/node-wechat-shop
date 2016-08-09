// GET /user
	exports.get = {
		url: '/pro-view',
		handler: function (req, res, next) {
			res.render('shop/pro-view',{title:"商城"})
		}
	};