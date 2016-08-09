// GET /user
	exports.get = {
		url: '/shop-ranking',
		handler: function (req, res, next) {
			res.render('shop/shop-ranking',{title:"商城"})
		}
	};