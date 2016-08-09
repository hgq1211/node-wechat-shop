// GET /user
	exports.get = {
		url: '/shop-inviteCode',
		handler: function (req, res, next) {
			res.render('shop/shop-inviteCode',{title:"商城"})
		}
	};