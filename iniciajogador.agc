// File: iniciajogador.agc
// Created: 22-03

global tempoMorto as float	

function IniciaJogador()
	
	larguranavejogador = GetSpriteWidth(NaveJogador)
	
	alturanavejogador = GetSpriteHeight(NaveJogador)
	
	Jogador.iniciox = LarguraTela / 2 - (larguranavejogador  /2)
	
	Jogador.inicioy = AlturaTela - alturanavejogador - 20
	
		
	
endfunction


function AjustaPosicaoInicialJogador()
	
	Jogador.x = Jogador.iniciox
	
	Jogador.y = Jogador.inicioy
	
	Jogador.spr = NaveJogador
	
	SetSpritePosition(NaveJogador, Jogador.iniciox, Jogador.inicioy)
	
	SetSpriteDepth(Jogador.spr, 995)
	
endfunction


function AtualizaBalasJogador()
	
	if TiroJogador.ativo = FALSE then exitfunction //O Tiro não foi dado
	TiroJogador.y = TiroJogador.y-TiroJogador.velocidade //Atualiza a Posição da Bala
	if TiroJogador.y < 30 //A Bala Atingiu o topo da tela
		MataTiroJogador()
		exitfunction 
	endif
				
	
	SetSpritePosition(TiroJogador.spr, TiroJogador.x, TiroJogador.y)
	
endfunction


function MataJogador()
		
	  pontox = Jogador.x - 45
	  pontoy = Jogador.y - 50
	  
	  CriarExplosaoJogador(pontox,pontoy)   
	  ReduzVidas() 
	  PlaySound(4,VolumeDosEfeitos,false)   
	
endfunction