exports.get = {
	url: '/shop-code',
	handler: function (req, res, next) {
		res.render('shop/shop-code',{title:"explain主页"})
	}
};