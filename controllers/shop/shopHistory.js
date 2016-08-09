exports.get = {
	url: '/shop-history',
	handler: function (req, res, next) {
		res.render('shop/shop-history',{title:"主页"})
	}
};