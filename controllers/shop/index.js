// GET /user
	exports.get = {
		url: '/shop',
		handler: function (req, res, next) {
			res.render('shop/shop',{title:"商城"})
		}
	};