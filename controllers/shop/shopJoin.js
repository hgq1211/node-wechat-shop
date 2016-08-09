exports.get = {
	url: '/shop-join',
	handler: function (req, res, next) {
		res.render('shop/shop-join',{title:"主页"})
	}
};