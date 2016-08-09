// GET /user
	exports.get = {
		url: '/shop-historyView',
		handler: function (req, res, next) {
			res.render('shop/shop-historyView',{title:"商城"})
		}
	};