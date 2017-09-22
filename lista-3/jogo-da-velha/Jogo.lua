local tabuleiro = require("Tabuleiro")
local player = require("Player")

local  jogo = {tabuleiro, player1, player2}

function jogo:novo()

	local x = {}
	setmetatable(x, {__index = jogo})
	
	x.tabuleiro = tabuleiro:novo()
	x.player1 = player:novo()
	x.player2 = player:novo()

	return x

end	

return jogo