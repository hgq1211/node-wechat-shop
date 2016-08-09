exports.get = {
	url: '/shop-homepage',
	handler: function (req, res, next) {
		res.render('shop/shop-homepage',{title:"主页"})
	}
};