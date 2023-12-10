// File: movimentajogador.agc
// Created: 22-03-13

type oJogador
	spr as integer
	 x as float
	 y as float
	 iniciox as float
	 inicioy as float
	 velociadade as float
endtype

global Jogador as oJogador

#constant MovEsquerda -1

#constant MovDireita 1

function MovimentaJogador(direcao)
		
	Jogador.spr = NaveJogador
	
	Jogador.velociadade = VelocidadeNave / 20
	
	//Move the player ship in the direction of 'dir'
	Jogador.x = Jogador.x + Jogador.velociadade*direcao
	
	tamanhojogador = GetSpriteHeight(jogador.spr)
	
	largurajogador = GetSpriteWidth(jogador.spr)
	
	SetSpritePosition( EscudoJogador, Jogador.x - (tamanhojogador / 2 -10), Jogador.y - (largurajogador / 2 -10))
	
	//Ensure the player doesn't go off the edge of the screen 
	if Jogador.x < 0
		Jogador.x = 0
	endif
		
	if Jogador.x > LarguraTela-GetSpriteWidth(Jogador.spr)
		Jogador.x = LarguraTela-GetSpriteWidth(Jogador.spr)
	endif
		
	
	SetSpritePosition(Jogador.spr, Jogador.x, Jogador.y) //Update player position
	
endfunction
