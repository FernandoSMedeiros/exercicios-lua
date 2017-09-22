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
    	-- body
    end    

return tabuleiro
