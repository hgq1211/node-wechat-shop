// GET /user
	exports.get = {
		url: '/shop-package',
		handler: function (req, res, next) {
			res.render('shop/shop-package',{title:"商城"})
		}
	};