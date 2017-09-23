local tabuleiro = { {'_', '_', '_'},
				    {'_', '_', '_'}, 
				    {' ', ' ', ' '} }

function tabuleiro:novo()
	
	local x = {}
	
	setmetatable(x, {__index = tabuleiro})
	
	return x

end			

function tabuleiro:mostrar()
	
	string = ""

	for i = 1, #tabuleiro do 
		
		for j=1,3 do
			
			string = string .. tabuleiro[i][j]

			if j ~= 3 then
				string = string .. "|"
			end	

			if j == 3 then 
				string = string .. "\n"									
			end	

		end

    end
	
	print(string)

end	

function tabuleiro:vencedor()
    	
    for i=1,3 do
    		if (self[i][1] == self[i][2]) and (self[i][3] == self[i][2]) then
    			
    			return true
    			break

    		elseif (self[1][i] == self[2][i]) and (self[3][i] == self[2][i])	

    			return true
    			break
    	end	

end 

function tabuleiro:jogada(linha, cluna, player)

	if (linha >= 1 and linha <= 3) and (coluna >= 1 and coluna <=3) and 
	   ((self[linha][coluna] == "_") or (self[linha][coluna] == " "))then
		
		self[linha][coluna] = player.simbolo
		
		return true

	else

		return false
	end

end       

return tabuleiro
