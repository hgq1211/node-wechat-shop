exports.get = {
	url: '/shop-data',
	handler: function (req, res, next) {
		res.render('shop/shop-data',{title:"explain主页"})
	}
};