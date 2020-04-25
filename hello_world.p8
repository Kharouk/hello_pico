pico-8 cartridge // http://www.pico-8.com
version 22
__lua__
player = {}
player.x = 23
player.y = 20
player.sprite = 0
player.speed = 2
normalSpeed = 3

function move()
	player.moving = true
	player.sprite = 1
end

function _init()
	x=64
	y=64
	isflipped=false
end

function _update()
	if (btn('left')) x-=normalSpeed isflipped=false
	if (btn(1)) then 
		x+=normalSpeed
		isflipped=true
	end
	if (btn(2)) y-=normalSpeed 
	if (btn(3)) y+=normalSpeed
end

function _draw()
	cls()
	-- why the hell did this go diagonal when it was set to x,x..???
	-- it somehow tied the x variable and thought hey i'll subtract another n-1?
	spr(1, x, y, 1, 1, isflipped, false)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000007777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000707000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000007777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700006666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000006666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888eeeeee888888888888888888888888888888888888888888888888888888888888888888888888ff8ff8888228822888222822888888822888888228888
8888ee888ee88888888888888888888888888888888888888888888888888888888888888888888888ff888ff888222222888222822888882282888888222888
888eee8e8ee88888e88888888888888888888888888888888888888888888888888888888888888888ff888ff888282282888222888888228882888888288888
888eee8e8ee8888eee8888888888888888888888888888888888888888888888888888888888888888ff888ff888222222888888222888228882888822288888
888eee8e8ee88888e88888888888888888888888888888888888888888888888888888888888888888ff888ff888822228888228222888882282888222288888
888eee888ee888888888888888888888888888888888888888888888888888888888888888888888888ff8ff8888828828888228222888888822888222888888
888eeeeeeee888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111ddd1d1d1dd111dd1ddd1ddd11dd1dd111111ddd11dd1d1d1ddd11d111d111111111111111111111111111111111111111111111111111111111
1111111111111d111d1d1d1d1d1111d111d11d1d1d1d11111ddd1d1d1d1d1d111d11111d11111111111111111111111111111111111111111111111111111111
1ddd1ddd11111dd11d1d1d1d1d1111d111d11d1d1d1d11111d1d1d1d1d1d1dd11d11111d11111111111111111111111111111111111111111111111111111111
1111111111111d111d1d1d1d1d1111d111d11d1d1d1d11111d1d1d1d1ddd1d111d11111d11111111111111111111111111111111111111111111111111111111
1111111111111d1111dd1d1d11dd11d11ddd1dd11d1d11111d1d1dd111d11ddd11d111d111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111ddd1d111ddd1d1d1ddd1ddd11111ddd11dd1d1d1ddd1dd111dd1111111111111ddd1ddd1d1d1ddd11111111111111111111111111111111
11111111111111111d1d1d111d1d1d1d1d111d1d11111ddd1d1d1d1d11d11d1d1d1111111ddd111111d11d1d1d1d1d1111111111111111111111111111111111
1ddd1ddd111111111ddd1d111ddd1ddd1dd11dd111111d1d1d1d1d1d11d11d1d1d1111111111111111d11dd11d1d1dd111111111111111111111111111111111
11111111111111111d111d111d1d111d1d111d1d11111d1d1d1d1ddd11d11d1d1d1d11111ddd111111d11d1d1d1d1d1111111111111111111111111111111111
11111111111111111d111ddd1d1d1ddd1ddd1d1d11d11d1d1dd111d11ddd1d1d1ddd11111111111111d11d1d11dd1ddd11111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111ddd1d111ddd1d1d1ddd1ddd111111dd1ddd1ddd1ddd1ddd1ddd1111111111111dd111111111111111111111111111111111111111111111
11111111111111111d1d1d111d1d1d1d1d111d1d11111d111d1d1d1d11d111d11d1111111ddd111111d111111111111111111111111111111111111111111111
1ddd1ddd111111111ddd1d111ddd1ddd1dd11dd111111ddd1ddd1dd111d111d11dd111111111111111d111111111111111111111111111111111111111111111
11111111111111111d111d111d1d111d1d111d1d1111111d1d111d1d11d111d11d1111111ddd111111d111111111111111111111111111111111111111111111
11111111111111111d111ddd1d1d1ddd1ddd1d1d11d11dd11d111d1d1ddd11d11ddd1111111111111ddd11111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111ddd1dd11dd111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111d111d1d1d1d11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ddd1ddd11111dd11d1d1d1d11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111d111d1d1d1d11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111ddd1d1d1ddd11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111111111666166116661666117111711111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111161161611611161171111171111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111111111161161611611161171111171111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111161161611611161171111171111111111111111111111111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661666161616661161117111711111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111161611111c111c1c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111161617771c111c1c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111116111111ccc1ccc111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111161617771c1c111c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111161611111ccc111c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111161611111c111c1c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111161617771c111c1c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111166611111ccc1ccc111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111617771c1c111c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111166611111ccc111c111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111111111616166616611666166616661171117111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111616161616161616116116111711111711111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111111111616166616161666116116611711111711111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111616161116161616116116111711111711111111111111111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661166161116661616116116661171117111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1eee111111711bbb1bbb1bb111711ccc1171117111111616111111111cc1111111111111111111111111111111111111111111111111111111111111
111111e11e11111117111b1b11b11b1b17111c1c11171117111116161111177711c1111111111111111111111111111111111111111111111111111111111111
111111e11ee1111117111bb111b11b1b17111c1c11171117111111611777111111c1111111111111111111111111111111111111111111111111111111111111
111111e11e11111117111b1b11b11b1b17111c1c11171117111116161111177711c1111111111111111111111111111111111111111111111111111111111111
11111eee1e11111111711bbb11b11b1b11711ccc1171117111111616111111111ccc111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111ddd1ddd111111d11ddd1ddd1dd111d111d111ddddd111d111d111d111111d1d111111111dd1111111111111111111111111111111111111
111111111111111111d11d1111111d111d1d11d11d1d1d111d111dd11ddd1d11111d111d11111d1d11d11ddd11d1111111111111111111111111111111111111
11111ddd1ddd111111d11dd111111d111dd111d11d1d1d1111111dd111dd1111111d111d111111d11ddd111111d1111111111111111111111111111111111111
111111111111111111d11d1111111d111d1d11d11d1d1d1111111dd11ddd1111111d111d11111d1d11d11ddd11d1111111111111111111111111111111111111
11111111111111111ddd1d11111111d11ddd11d11d1d11d1111111ddddd1111111d111d111111d1d111111111ddd111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111ddd1ddd111111d11ddd1ddd1dd111d111d111ddddd111d111d111d111111d1d111111111dd1111111111111111111111111111111111111
111111111111111111d11d1111111d111d1d11d11d1d1d111d111ddd1ddd1d11111d111d11111d1d11111ddd11d1111111111111111111111111111111111111
11111ddd1ddd111111d11dd111111d111dd111d11d1d1d1111111dd111dd1111111d111d11111ddd1ddd111111d1111111111111111111111111111111111111
111111111111111111d11d1111111d111d1d11d11d1d1d1111111dd111dd1111111d111d1111111d11111ddd11d1111111111111111111111111111111111111
11111111111111111ddd1d11111111d11ddd11d11d1d11d1111111ddddd1111111d111d111111ddd111111111ddd111111111111111111111111111111111111
11111111111111111111111111111111111188888111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1eee111111711bbb1bbb1bb111718878817111111616111111111cc11111111111111111111111111111111111111111111111111111111111111111
111111e11e11111117111b1b11b11b1b171188878117111116161171177711c11111111111111111111111111111111111111111111111111111111111111111
111111e11ee1111117111bb111b11b1b171188878117111116661777111111c11111111111111111111111111111111111111111111111111111111111111111
111111e11e11111117111b1b11b11b1b171188878117111111161171177711c11111111111111111111111111111111111111111111111111111111111111111
11111eee1e11111111711bbb11b11b1b11718878817111111166111111111ccc1111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111117111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111117711111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111117771111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111117777111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111117711111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111171111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111111111661166616661616117111711111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111616161616161616171111171111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111111111616166116661616171111171111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111111111616161616161666171111171111111111111111111111111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116661666161616161666117111711111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
82888222822882228888822282288882822282228888888888888888888888888888888888888888888888888888822282228882822282288222822288866688
82888828828282888888888288288828888288828888888888888888888888888888888888888888888888888888888288828828828288288282888288888888
82888828828282288888822288288828822288828888888888888888888888888888888888888888888888888888882288828828822288288222822288822288
82888828828282888888828888288828828888828888888888888888888888888888888888888888888888888888888288828828828288288882828888888888
82228222828282228888822282228288822288828888888888888888888888888888888888888888888888888888822288828288822282228882822288822288
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
01270100101521c1521b1521c15228152261522415218152291522b152201522215222152201522d1521e1521c1521c152201522015222152221522415224152241522415218152181521a1521a1521c1520e132
001000000000000000000000000033050000000000000000000000000025050000000000000000000000000000000000000000000000000003305000000000000000027050000000000000000000000000000000
__music__
00 41424344
00 01424344

