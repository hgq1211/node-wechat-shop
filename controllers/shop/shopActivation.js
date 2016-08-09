// GET /user
	exports.get = {
		url: '/shop-activation',
		handler: function (req, res, next) {
			res.render('shop/shop-activation',{title:"商城"})
		}
	};