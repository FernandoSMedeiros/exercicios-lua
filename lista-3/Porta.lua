local porta = {cor = "", aberta, dimensaoX, dimensaoY, dimensaoZ}

function novaPorta()

	local o = {}

	setmetatable(o , {__index = porta})

	return o
end

function porta:pintar(cor)
	self.cor = cor
end	

function porta:abrir()
	if(self.aberta == false) then
		print("porta já está aberta")
	else	
		self.aberta = true
	end	
end

function porta:fechar()
	if(self.aberta == true) then
		self.aberta = false		
	else	
		print("porta já está fechada")
	end	
end

function porta:aberta()
	if (self.aberta) then
		return true
	end
		return false
end