// File: logodechinelo.agc
// Created: 22-03-12

global LogoDeChinelo as integer
global NovoTempo
global SomdechineloPlayed as integer

function MostraLogo()
	
	LogoDeChinelo = CreateSprite(LoadImage("dechinelogames.png"))
	SetSpriteDepth (LogoDeChinelo, 999)
	SetSpriteVisible(LogoDeChinelo, TRUE)
	SetSpriteSize(LogoDeChinelo, LarguraTela*0.5, AlturaTela*0.5) // Ajusto o tamanho do logo
	SetSpritePositionByOffset(LogoDeChinelo, LarguraTela*0.5, AlturaTela*0.5) // Ajusto a posição do logo
	
	NovoTempo = GetSeconds ( ) + 3	
	
	
		
			
endfunction

function Somdechinelo()
	
	if SomdechineloPlayed = False
	
	PlaySound(6,100,false)
	
	endif
	
	
endfunction

function DispensaLogo()	
	
	Somdechinelo()
	
	SomdechineloPlayed = TRUE
	
	if Tempo = NovoTempo
		
		NovoTempo = 0
		
		SetSpriteVisible(LogoDeChinelo, FALSE)
		TeladeInicio()
		
		endif
	
	endfunction