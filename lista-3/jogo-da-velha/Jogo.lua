local tabuleiro = require("Tabuleiro")
local player = require("Player")

local  jogo = {tabuleiro, player1, player2, playerAtual}

function jogo:novo()

	local x = {}
	setmetatable(x, {__index = jogo})
	
	x.tabuleiro = tabuleiro:novo()
	x.player1 = player:novo("X")
	x.player2 = player:novo("O")
	x.playerAtual = player:novo("O")

	return x

end	

function  jogo:suaVez()
	if self.playerAtual == player1.caracter then
		self.playerAtual = self.player2
	else
		self.playerAtual = self.player1
	end		
end

return jogo