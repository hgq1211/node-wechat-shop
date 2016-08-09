// GET /user
	exports.get = {
		url: '/shop-sale',
		handler: function (req, res, next) {
			res.render('shop/shop-sale',{title:"商城"})
		}
	};