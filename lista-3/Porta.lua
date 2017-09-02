local porta = {cor = "", aberta, dimensaoX, dimensaoY, dimensaoZ}

function novaPorta()

	local o = {}

	setmetatable(o , {__index = porta})
	o.aberta = false

	return o
end

function porta:pintar(cor)
	self.cor = cor
end	

function porta:abrir()
	if(self.aberta == false) then
		self.aberta = true		
	end	
end

function porta:fechar()
	if(self.aberta) then
		self.aberta = false	
	end	
end

function porta:aberta()
	if (self.aberta) then
		return true
	end
		return false
end