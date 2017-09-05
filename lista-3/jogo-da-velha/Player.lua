local jogador{nome = "", caracter = ''}

function jogador:novo()
	local x = {}

	setmetatable(x, {__index = jogador})

	return x
end

function jogador:selecioneOcaracter(caracter)
	if caracter == 'O' or caracter == 'X' then
		self.caracter = caracter
	end	
end

function jogador:novo(nome)
	self.nome = nome
end