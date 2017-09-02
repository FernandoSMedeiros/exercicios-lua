local p = require("Porta")

local casa = {cor = "", portas = {}}

function novaCasa()
	local o = {}
	setmetatable(o, {__index = casa})
	return o	
end

function casa:pinta(cor)
	self.cor = cor
end

function casa:quantasPortasEstaoAbertas()
	
	local i = 0

	for k, v in ipairs(self.portas) do		
		if (v.aberta) then			
			i = i+1
		end
	end

	return i

end

function casa:totalDePortas()

	local i = 0

	for k, v in ipairs(self.portas) do					
			i = i+1		
	end

	return i

end

-- Extra

function casa:addPorta(porta)
	table.insert(self.portas, porta)
end
