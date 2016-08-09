// GET /user
	exports.get = {
		url: '/games1',
		handler: function (req, res, next) {
			res.render('games/games1',{title:"商城"})
		}
	};