// GET /user
	exports.get = {
		url: '/games2',
		handler: function (req, res, next) {
			res.render('games/games2',{title:"商城"})
		}
	};