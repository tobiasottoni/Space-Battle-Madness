// File: explosoes.agc
// Created: 22-03-14

type aExplosao
	ativa as integer
	spr as integer		
	tempo as float		
endtype


type aExplosao2
	ativa as integer
	spr as integer		
	tempo as float		
endtype


global Explosao as aExplosao


global Explosao2 as aExplosao2


function IniciaExplosoes()
	
	Explosao.spr = CloneSprite(Explosao01)
	SetSpriteDepth(Explosao.spr, 994)	
	SetSpriteSize(Explosao.spr,280,280)
	SetSpriteVisible(Explosao.spr, FALSE)	
	
	
	Explosao2.spr = CloneSprite(Explosao02)
	SetSpriteDepth(Explosao2.spr, 994)	
	SetSpriteSize(Explosao2.spr,280,280)
	SetSpriteVisible(Explosao2.spr, FALSE)
	
endfunction


function AtualizaExplosoes()
	
	if Explosao.ativa = FALSE 
		exitfunction 
	endif
	
	if timer() > Explosao.tempo +0.50	
		MataExplosoes()			
	endif
			
endfunction



function AtualizaExplosoesJogador()	
		
	if Explosao2.ativa = FALSE 
		exitfunction 
	endif
	
	if timer() > Explosao2.tempo+0.25
		MataExplosoesJogador()			
	endif
	
endfunction


function CriarExplosao(x,y) 
	PlaySound(3,VolumeDosEfeitos,false )
	Explosao.ativa = TRUE
	SetSpritePosition(Explosao.spr, x, y)
	SetSpriteVisible(Explosao.spr, TRUE)
	Explosao.tempo = Timer()  
endfunction

function CriarExplosaoJogador(x,y) 
	PlaySound(3,VolumeDosEfeitos,false )
	Explosao2.ativa = TRUE
	SetSpritePosition(Explosao2.spr, x, y)
	SetSpriteVisible(Explosao2.spr, TRUE)
	Explosao2.tempo = Timer() 
endfunction

function MataExplosoesJogador()
	Explosao2.ativa = FALSE
	SetSpriteVisible(Explosao2.spr, FALSE)
endfunction


function MataExplosoes()
	Explosao.ativa = FALSE
	SetSpriteVisible(Explosao.spr, FALSE)
endfunction


function LimpaExplosoes()
	MataExplosoes()
	MataExplosoesJogador()
endfunction
