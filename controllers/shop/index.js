// GET /user
	exports.get = {
		url: '/shop',
		handler: function (req, res, next) {
			res.render('shop/shop',{
				layout:'no-article',
				title:"商城"
			})
		}
	};