// GET /user
	exports.get = {
		url: '/shop-sale',
		handler: function (req, res, next) {
			res.render('shop/shop-sale',{
				layout:'no-article',
				title:"商城"})
		}
	};