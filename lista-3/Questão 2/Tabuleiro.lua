tabuleiro = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}

--print(tabuleiro[1][1])
--print(tabuleiro[2][1])
--print(tabuleiro[3][1])

for i=1,#tabuleiro do
	
	for j=1, #tabuleiro[i] do
		print(tabuleiro[i][j] .. "|")
	end

end