// File: estiloescudojogador.agc
// Created: 22-03-16


global EscudoJogador as integer


function DefineEscudoJogador()
	
	EscudoJogador = 15
		
	CreateSprite (EscudoJogador, 0 )
	SetSpriteSize(EscudoJogador,300,300)	
		
		AddSpriteAnimationFrame ( EscudoJogador, LoadImage ( "bonus/itens/escudo_001.png" ))
		AddSpriteAnimationFrame ( EscudoJogador, LoadImage ( "bonus/itens/escudo_002.png" ))
		AddSpriteAnimationFrame ( EscudoJogador, LoadImage ( "bonus/itens/escudo_003.png" ))
		
     PlaySprite ( EscudoJogador, 10, 1, 1, 10 )
     
     SetSpriteDepth(EscudoJogador, 997)
     
     SetSpriteVisible( EscudoJogador, FALSE )
				
			
endfunction
