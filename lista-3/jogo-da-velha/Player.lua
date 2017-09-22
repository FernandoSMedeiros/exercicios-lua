local jogador = {nome = "", caracter = ''}

function jogador:novo(caracter)
	local x = {}
	setmetatable(x, {__index = jogador})
	x.caracter = caracter
	return x
end

return jogador

