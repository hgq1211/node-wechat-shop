exports.get = {
	url: '/shop-explain',
	handler: function (req, res, next) {
		res.render('shop/shop-explain',{title:"explain主页"})
	}
};