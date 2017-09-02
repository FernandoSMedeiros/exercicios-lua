porta = {cor = "", aberta, dimensaoX, dimensaoY, dimensaoZ}

function novaPorta()

	local o = {}

	setmetatable(o , {__index = porta})

	return porta
end

function porta:pintar(cor)
	self.cor = cor
end	

function porta:abrir()
	self.aberta = true
end

function porta:fechar()
	self.aberta = false
end

function porta:aberta()
	if (self.aberta) then
		return true
	end
		return false
end