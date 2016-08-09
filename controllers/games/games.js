// GET /user
	exports.get = {
		url: '/games',
		handler: function (req, res, next) {
			res.render('games/games',{title:"商城"})
		}
	};