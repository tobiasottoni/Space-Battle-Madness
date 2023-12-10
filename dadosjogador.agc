// File: dadosjogador.agc
// Created: 22-03-13

global Vidas as integer
global TextoVidas as integer

function IniciaVidas()

	Vidas = 5
	
	TextoVidas = CreateText("Lifes: " + str(Vidas))
	SetTextSize(TextoVidas, 60)
	SetTextFont(TextoVidas, 1)
	SetTextPosition(TextoVidas, 100, 0)
	SetTextVisible(TextoVidas, FALSE)
		
endfunction

function AumentaVidas()
	
	Vidas = Vidas + 1
	SetTextString(TextoVidas, "Lifes: " + str(Vidas))
	PlaySound(16,VolumeDosEfeitos,FALSE)	
	
endfunction


function ReduzVidas()
	
	Vidas = Vidas - 1
	SetTextString(TextoVidas, "Lifes: " + str(Vidas))
	
	if Vidas <= 0	
		
	AumentaAltaPontuacao(Pontuacao)
	GameOver()
		
	
    endif
	
endfunction