local p = require("Porta")
local c = require("Casa")

-- Criada para testar Casa e Porta

local porta1 = novaPorta()
porta1:pintar("Azul")
porta1:abrir()
porta1.dimensaoX = 5
porta1.dimensaoY = 5
porta1.dimensaoZ = 5

local porta2 = novaPorta()
porta2:pintar("Amarela")
porta2:abrir()
porta2.dimensaoX = 4
porta2.dimensaoY = 4
porta2.dimensaoZ = 4

local porta3 = novaPorta()
porta3:pintar("Verde")
porta3:abrir()
porta3.dimensaoX = 3
porta3.dimensaoY = 3
porta3.dimensaoZ = 3

local porta4 = novaPorta()
porta4:pintar("Vermelha")
porta4:abrir()
porta4.dimensaoX = 5
porta4.dimensaoY = 5
porta4.dimensaoZ = 5

local casa = novaCasa()

--local casa:addPorta(porta1)
--local casa:addPorta(porta2)
--local casa:addPorta(porta3)
--local casa:addPorta(porta4)
