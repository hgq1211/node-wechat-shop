exports.get = {
	url: '/shop-hero',
	handler: function (req, res, next) {
		res.render('shop/shop-hero',{title:"主页"})
	}
};