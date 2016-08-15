// GET /user
	exports.get = {
		url: '/t-shirt',
		handler: function (req, res, next) {
			res.render('shop/t-shirt',{
				layout:'no-article',
				title:"商城"})
		}
	};